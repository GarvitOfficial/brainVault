---
Title: Basic Concepts of Networking
Week: "[[Week 1]]"
Week Topics: Introduction to ethical hacking. Fundamentals of computer networking. TCP/IP protocol stack.
---
# [[ Computer Network]]
A communication system in which many devices(hosts/nodes) is talking to each other. Devices like mobile, smart fridge, CCTV camera, car, industrial machines.
## Why ?
- Better connectivity - All devices will be linked
- Resource sharing - cloud storage, computing power
- Better communication - video calls, emails, social media
- People Bring Together - Social media, communication
aj ka pura internet "network of networks" hai. Chhote-chhote LANs milke bada WAN banate hain.

# Types of Computer Networks

| Feature      | [[LAN]] (Local Area Network)             | [[WAN]] (Wide Area Network)              |
| ------------ | ---------------------------------------- | ---------------------------------------- |
| Area Covered | Small – one room, building, or campus    | Large – cities, countries, or continents |
| Speed        | Very fast (1 Gbps, up to 10/40/100 Gbps) | Slower than LAN                          |
| Cost         | Low long-term cost                       | Higher recurring ISP cost                |
| Technology   | Ethernet                                 | Leased lines, Fiber, Internet            |
| Ownership    | Private organization                     | ISP / Telecom provider                   |
| Example      | Home, Office, College Lab                | Internet                                 |

Key Difference: You have the ownership of [[LAN]] can control it fully, but not of [[WAN]]

# Data Communication over a Network
Imagine nodes A (sender) to H (receiver) tak, beech mein routers B,C,D,E,F,G.
1. [[Circuit Switching]] - dedicated path of communication is established in starting only between A and H.

<div style="margin-left: 20px;">

<b>How it Works?</b>

<ol>
    <li>Connection Establishment (Phase 1): Path fix aur reserve (dedicated logical channels). Initial delay hota hai.</li>
    <li>Data Transfer (Phase 2): Max possible speed, guaranteed bandwidth, no interruption.</li>
    <li>Connection Termination (Phase 3): Resources release - dusre users use kar sakein.</li>
</ol>

<b>Advantages:</b>

<ol type="a">
    <li>Perfect for Continuous flow like voice.</li>
    <li>Predictable, reliable performance.</li>
</ol>

<b>Disadvantages:</b>

<ol type="a">
    <li>Computer data bursty hota hai - kabhi bohot data, kabhi zero. Channel reserved rehta hai → low utilization, waste of resources.</li>
    <li>Initial delay always</li>
    <li>Not good for modern internet (data traffic)</li>
</ol>

</div>

2. [[Packet Switching]] (My Fav) - Message is broken into short packets (~kbytes)

 ![[packetSwitching.png|450]] 

<div style="margin-left: 20px;">

<b>Steps:</b>

<ol>
    <li>Longer message broken up into smaller chunks</li>
    <li>Har packet mein header add (destination address, sequence, etc.).</li>
    <li>Packets alag-alag bhej do. As they are independent and knows where to go</li>
</ol>

<b> [[Store-and-Forward]] (Sabse Important Concept)::</b>

<ol type="a">
    <li>Router (Intermediate route) packet receive karta hai → apne buffer (temporary memory) mein store karta hai.</li>
    <li>Routing table dekhta hai → decide karta hai next link konsa.</li>
    <li>Phir forward karta hai.</li>
    <li>Agar next link busy → buffer mein wait.</li>
    <li>Fayda: Link utilization badhta hai, data rate conversion possible (fast incoming → slow outgoing), priority de sakte ho.</li>
</ol>

<b>Advantages:</b>

<ol type="a">
    <li>Links can be shared; utlisation = better</li>
    <li>Suitable for computer generated busted traffic</li>
    <li>Flexible - congestion ho toh alternate route.</li>
    <li>Buffering + priority easy.</li>
</ol>

<b>Disadvantage of Packet Switching</b>

<ol type="a">
    <li>Unordered Delays: Packets may arrive out of sequence, while circuit switching ensures ordered delivery since all data follows the same path.</li>
    <li>Need of Sequence Number: To reassemble data correctly, each packet must carry a sequence number.</li>
    <li>Increased Complexity: Each node must be capable of routing packets dynamically, which adds to the complexity.</li>
    <li>Rerouting and queuing can introduce delays, especially under high network load.</li>
    <li>While ideal for small or burst data, packet switching can be less efficient for large, constant data transmissions compared to circuit switching.</li>
</ol>

</div>


Garvit Hacking Angle: Yeh samajh ke tu packet sniffing, fragmentation attacks, routing manipulation kar sakta hai.

# Packing Switching Approches

a. [[Virtual Circuit]] = Packet Switching + Circuit Switching jaisa behaviour

<div style="margin-left: 20px;">

<ol>
    <li>Circuit switching jaisa lekin packets ke liye.</li>
    <li>Pehle route establish karo (connection phase).</li>
    <li>Sab packets same fixed path follow karenge.</li>
    <li>Har circuit ko [[Virtual Circuit Number (VC#)]] milta hai.</li>
    <li>Header mein sirf VC# hota hai → routers uske hisaab se forward (no need full address every time).</li>
    <li>Har router apne routing table mein VC# → next link store karke rakhta ha</li>
    <li>Store-and-forward toh hota hi hai.</li>
    <li>No dynamic routing per packet - path fixed rehta hai.</li>
</ol>

<b>Drawback:</b>

<ol type="a">
    <li>Link slow ho jaaye tab bhi same path use karte raho - not adaptive.</li>
</ol>

<b>Example:</b>

<p>Tu A se H tak data bhej raha hai. Virtual Circuit bana diya → path A→B→E→H. Ab saare packets isi path pe jayenge, bhale hi beech mein traffic ho. Agar koi link slow ho gaya toh bhi wohi path use hoga</p>

</div>


|                  | Pure Circuit Switching          | Virtual Circuit (Packet Switching) |
| ---------------- | ------------------------------- | ---------------------------------- |
| Path             | Dedicated physical/logical path | Fixed logical path (shared links)  |
| Bandwidth        | Guaranteed dedicated            | No strict guarantee, shared        |
| Packets          | Continuous stream (no packets)  | Small packets, same route          |
| Connection Phase | Yes                             | Yes (route establish)              |
| Dynamic Routing  | No                              | No (fixed path once set)           |
| Link Utilization | Poor (bursty data waste)        | Better than circuit, but not best  |
