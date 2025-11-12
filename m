Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D5F1CCFA18
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 01:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuO3Q93HW1enF19hU35Ci8AniWjMR6i1FJaxd8Ni+xk=; b=3W/yFetPzHsfv6
	eXIbKebSs90ifwKIMuxQPadFrtxzr3lI9Q7v1F4lAAGqmI9BhzWLmim9K8sv1ZiUT28DU6QmD6Grq
	ubZYhO0qZbvnvDyrWLdrYakrMp/jQAh/JQ9ytD/jAGhTMs03d4DMYhlH+ksBC3NMIVfmoUUD0g2LE
	+XOuImneYof+bisOFFwf7sqyo4sLilbUpUDs2CMJNmDWINticQ0w99x+iPjALltk/4XFQP1N207mQ
	SIVCuyvT3FrhLG9sbhNarx5ywONEARybMewkQ++CTijdnQYINfN8+tOw5kmxUFi33FcPiBbGg7QzJ
	YpadCHtCAkSFcuSyCCAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIzFm-00000007wW1-41N8;
	Wed, 12 Nov 2025 01:02:30 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIzFk-00000007wV3-1RhD
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 01:02:30 +0000
X-QQ-mid: zesmtpip4t1762909284t0ecad46c
X-QQ-Originating-IP: +PVpuR+pgj8F8fJiAgCS6btYuv2YbTk8iFN/foljanw=
Received: from [IPV6:240f:10b:7440:1:16e6:e9c9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Nov 2025 09:01:20 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5829268747696676124
Message-ID: <EB08CB02156A172D+abf42f17-09e1-40ea-9369-eca481d230a6@radxa.com>
Date: Wed, 12 Nov 2025 10:01:20 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Dragan Simic <dsimic@manjaro.org>
Cc: Joseph Kogut <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OXhWvHhbOVwtcYKPgE3+RLHputR4fipwkm4iwCQAP9NBBskhdXVxhXgn
	rxCqmN2/v4uvcixb4A/uUsv3AnQbAPog9OFGdlfqxWrVkjVCxPNuW66kvzW2d0kDKWBYnA0
	J97D9hskkdvkOJR4qBNAYBw4o0i18DyJ9Nitub6e6KMdEF0RPAOsbYScDWRFULtrCYT/8/f
	cdBivoftYqAhUcpJfK4F4gtiglpceZ1lZlYjFbwiIvBy2a8CLv7TfrZ4b1IM/y2b460uAGv
	vSpSFzplbUwFrS1gfe7P2hedM1jkMmI2gpCrS5LU88jGYpPPN3lfxFZg+DUSJCJ/ffv7CAC
	wq8YmyBClfX2ntmjjd1S8bsUXDFV94SnWMBpHrESXjFd+4Nk0Gm3KLrLfObOQ9yLfM0OkLL
	Nwgb5MmkbHDwuus4Lcvu8tNo9qIPsX1azhhskEzK9rMNZuezI61wSIGWHJ2KzgSqI2LUJ0T
	vqDY+IlKEaci2S/yS/fAmAozinLpv5KYudCmlz2TuX9kCWRm+cHQWY53InSDWMmk5vRxZHF
	0/o3zBMJEGskbVB6PqygH/p3RpEeTjjXcM6aM0nqtnZmxdxhZlm/kj3kSfpHsFXIJ0Hf5d4
	WYMSCdLu8G99YDeuk+STh6xuMI22v8w3ekvSFaZ/eC4VIQVvZXVcifQkehnkY8JgEh5Zip6
	LzTqLTLGtY2Tz8mVNTbH0Z1sXocpTG9iZdOvAIgN0VOBtAmLMwXqq/tqwVexKo8pSBdB78S
	9ahFkmH544riM73RiyWjylVX4Qekm3uCSDrZSbkWCNqxa2oFFcHBr0EsXWd/a5FHaWfpKTE
	mgVZWrdhL0Fv7qvo6uspZ4rR60PQaHVNKfhSqbaknuvdcgKJ9/rt2K1Il0+scY/4vfqHDew
	Q5lKQeAyPcKLXTxdD0oEECHN2IDaq9aYDgz0k0344my4fFhx7S+OZ8wN3nz/IPan1q2MosI
	1AzvPxy9DmiPqSQwIEbN9MVyhO5brtc/BXNDjgpxMwDRlfta6TRIvtYb/qppWCPHJWa36py
	kZNyhHSg==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_170228_945689_6795F7CB 
X-CRM114-Status: GOOD (  22.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRHJhZ2FuLCBKb3NlcGgsIGFsbAoKT24gMTEvMTIvMjUgMDk6NDYsIERyYWdhbiBTaW1pYyB3
cm90ZToKPiBIZWxsbyBOYW9raSwKPiAKPiBPbiBXZWRuZXNkYXksIE5vdmVtYmVyIDEyLCAyMDI1
IDAwOjI2IENFVCwgRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToKPj4gT24g
MTEvMTEvMjUgMjM6MzMsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4+IE9uIFR1ZXNkYXksIE5vdmVt
YmVyIDExLCAyMDI1IDEyOjUyIENFVCwgRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPiB3
cm90ZToKPj4+PiBPbiAxMS82LzI1IDAyOjQ4LCBKb3NlcGggS29ndXQgd3JvdGU6Cj4+Pj4+IE9u
IFdlZCwgTm92IDUsIDIwMjUgYXQgNDoxNeKAr0FNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhh
LmNvbT4gd3JvdGU6Cj4+Pj4+PiBJJ2QgbGlrZSB0byBjbGFyaWZ5IHRoZSBzaXR1YXRpb24gcmVn
YXJkaW5nIHRoZSB2NiBwYXRjaCBzZXJpZXMgSSBzdWJtaXR0ZWQuCj4+Pj4+Pgo+Pj4+Pj4gVGhl
IG9yaWdpbmFsIGRldmljZSB0cmVlIHdvcmsgZm9yIHRoZSBSYWR4YSBDTTUgYW5kIElPIEJvYXJk
IHdhcwo+Pj4+Pj4gYXV0aG9yZWQgYnkgSm9zZXBoIEtvZ3V0LiBJIHRvb2sgb3ZlciB0aGUgcmVz
cG9uc2liaWxpdHkgb2YgZ2V0dGluZyBpdAo+Pj4+Pj4gdXBzdHJlYW1lZCB3aXRoIGhpcyBhZ3Jl
ZW1lbnQuCj4+Pj4+Cj4+Pj4+IEknbGwgY29uZmlybSB0aGlzLiBJJ3ZlIGJlZW4gaW4gY29tbXVu
aWNhdGlvbiB3aXRoIE5hb2tpLiBUaGV5IG1hZGUgYQo+Pj4+PiBsYXJnZSBudW1iZXIgb2YgcmV2
aXNpb25zIHRvIG15IG9yaWdpbmFsIHBhdGNoIHNlcmllcywgd2hpY2ggSSB0aGluawo+Pj4+PiBo
YXZlIHRlY2huaWNhbCBtZXJpdC4gSSBzdWdnZXN0ZWQgdGhleSBzdWJtaXQgdGhlIHBhdGNoZXMg
dGhlbXNlbHZlcywKPj4+Pj4gYW5kIGdhdmUgdGhlbSBleHBsaWNpdCBwZXJtaXNzaW9uIHRvIGFk
ZCBteSBTaWduZWQtb2ZmLWJ5IGFuZCBDQyBtZS4KPj4+Pj4KPj4+Pj4gSSBhc3N1bWUgdGhpcyB3
YXMgdGhlIGNvcnJlY3Qgd2F5IGZvciB0aGVtIHRvIGNvbnRpbnVlIHRoZSB3b3JrIEkKPj4+Pj4g
c3RhcnRlZCwgYnV0IGlmIG5vdCwgcGxlYXNlIGxldCB1cyBrbm93IHRoZSBiZXN0IHdheSB0byBw
cm9jZWVkLgo+Pj4+Cj4+Pj4gQ2FuIGFueW9uZSBoZWxwIHVzPwo+Pj4KPj4+IEknbSBub3QgZXhh
Y3RseSBzdXJlIGhvdyB0byByZXNvbHZlIHRoZSBjdXJyZW50IHNpdHVhdGlvbiwgYnV0IGZvcgo+
Pj4gU2lnbmVkLW9mZi1ieSB0YWdzIHRvIGJlIHByZXNlbnQsIGluIHRoaXMgY2FzZSB5b3UnZCBu
ZWVkIHRvIGhhdmUKPj4+IENvLWRldmVsb3BlZC1ieSB0YWdzIGFzIHdlbGwsIGJlY2F1c2UgdGhl
IGZpbmFsIHBhdGNoIHZlcnNpb25zLAo+Pj4gd2hpY2ggd291bGQgYmUgc3VibWl0dGVkIGJ5IE5h
b2tpLCB3b3VsZCBkaWZmZXIgc2lnbmlmaWNhbnRseSBmcm9tCj4+PiB0aGUgdmVyc2lvbnMgdGhh
dCBKb3NlcGggYWN0aXZlbHkgd29ya2VkIG9uLCBpZiBJIHVuZGVyc3Rvb2QKPj4+IGV2ZXJ5dGhp
bmcgY29ycmVjdGx5LiAgVGhvdWdoLCBmb3IgSm9zZXBoJ3MgU2lnbmVkLW9mZi1ieSB0YWdzIHRv
Cj4+PiBiZSBpbmNsdWRlZCB0aGVyZSwgaGUgd291bGQgYWxzbyBuZWVkIHRvIHBhcnRpY2lwYXRl
IGFjdGl2ZWx5IGluCj4+PiB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlIGZpbmFsIHBhdGNoIHZlcnNp
b25zLgo+Pgo+PiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9wcm9jZXNz
L3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI3doZW4tdG8tdXNlLWFja2VkLWJ5LWNjLWFuZC1jby1k
ZXZlbG9wZWQtYnkKPj4KPj4gSWYKPj4gLS0tLQo+PiBGcm9tOiBKb3NlcGggS29ndXQgPGpvc2Vw
aC5rb2d1dEBnbWFpbC5jb20+Cj4+Cj4+IDxjaGFuZ2Vsb2c+Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IEpvc2VwaCBLb2d1dCA8am9zZXBoLmtvZ3V0QGdtYWlsLmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5
OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FV
TUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4gLS0tLQo+PiB0aGVuIEkgY2FuIHN1Ym1pdCBt
eSBwYXRjaCBzZXJpZXM/Cj4gCj4gQWN0dWFsbHksIHRoZSBDby1kZXZlbG9wZWQtYnkgdGFncyB3
b3VsZCBiZSBwb2ludGluZyB0byBKb3NlcGgKPiBpbiB0aGF0IGNhc2UsIGJ1dCBhcyBJIGRlc2Ny
aWJlZCBpdCBhYm92ZSwgdGhpcyBhcHByb2FjaCBiYXNpY2FsbHkKPiBjYW5ub3QgYmUgdXNlZCwg
YmVjYXVzZSBKb3NlcGgncyBvcmlnaW5hbCB3b3JrIGRpZmZlcnMgYSBsb3QgZnJvbQo+IHdoYXQg
eW91J2QgYWN0dWFsbHkgc3VibWl0IHRvIHRoZSBtYWlsaW5nIGxpc3QocykuCj4gCj4+IE9yLAo+
Pgo+Pj4gQW5vdGhlciBvcHRpb24sIHRlY2huaWNhbGx5IGEgYml0IHNpbXBsZXIsIHdvdWxkIGJl
IHRvIGluY2x1ZGUganVzdAo+Pj4gT3JpZ2luYWxseS1ieSB0YWdzIGZvciBKb3NlcGgsIHdoaWNo
IHdvdWxkIGluZGljYXRlIHRoYXQgSm9zZXBoIGdhdmUKPj4+IHVwIG9uIHRoZSBkZXZlbG9wbWVu
dCBvZiB0aGUgcGF0Y2hlcyBhbmQgaGFuZGVkIHRoZW0gb3ZlciB0byBOYW9raQo+Pj4gZm9yIGZ1
dHVyZSBkZXZlbG9wbWVudCBhbmQgc3VibWlzc2lvbiB0byB0aGUgbWFpbGluZyBsaXN0cy4gVGhv
dWdoLAo+Pj4gdGhhdCB3b3VsZCByZXF1aXJlIEpvc2VwaCB0byBwdWJsaWNseSBzdGF0ZSBleGFj
dGx5IHRoYXQuCj4+Cj4+IEkgY2Fubm90IGZpbmQgYW55IGRvY3VtZW50YXRpb24gYWJvdXQgIk9y
aWdpbmFsbHktYnkiLgo+PiBJcyB0aGlzIGNvcnJlY3Q/Cj4+IC0tLS0KPj4gPGNoYW5nZWxvZz4K
Pj4KPj4gT3JpZ2luYWxseS1ieTogSm9zZXBoIEtvZ3V0IDxqb3NlcGgua29ndXRAZ21haWwuY29t
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+IC0t
LS0KPiAKPiBUaGF0IGFwcHJvYWNoIGlzIHRoZSBvbmx5IEkgc2VlIGFwcGxpY2FibGUgaW4gdGhp
cyBjYXNlLiAgSG93ZXZlciwKPiBsZXQncyBoZWFyIG9waW5pb25zIGZyb20gb3RoZXIgcGVvcGxl
IGFzIHdlbGwuCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIGFkdmljZS4KClNvIEkgd2Fu
dCB0byBoZWFyIEpvc2VwaCdzIHB1YmxpYyBzdGF0ZW1lbnQgYW5kIHRoZSBvcGluaW9ucyBvZiBv
dGhlciAKcGVvcGxlLgoKPiBCeSB0aGUgd2F5LCB3aGF0IHlvdSBjYWxsZWQgY2hhbmdlbG9ncyBp
biB0aGUgZXhhbXBsZXMgYWJvdmUgaXMKPiB1c3VhbGx5IGNhbGxlZCBwYXRjaCBkZXNjcmlwdGlv
bnMuICBXaGVuIHRoZXkgYmVjb21lIG1lcmdlZCwgdGhleQo+IGJlY29tZSBjYWxsZWQgY29tbWl0
IGRlc2NyaXB0aW9ucyBvciwgc29tZXRpbWVzLCBjb21taXQgbWVzc2FnZXMuCj4gVXNpbmcgdGhl
IHN0YW5kYXJkIGxpbmdvIHVzdWFsbHkgaGVscHMuIDopCgpBaCwgaXQgY29tZXMgZnJvbQogIGh0
dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGluZy1w
YXRjaGVzLmh0bWwjd2hlbi10by11c2UtYWNrZWQtYnktY2MtYW5kLWNvLWRldmVsb3BlZC1ieQoK
U2hvdWxkIGl0IGJlIGZpeGVkPyA7KQoKQmVzdCByZWdhcmRzCgotLQpGVUtBVU1JIE5hb2tpClJh
ZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
