Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 984E0C77B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 22:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqDgKdRKT64asDL+TS1VUiN4Bbo+Tqi5FPYJkHTX5NM=; b=fapv8IGxplHLy3
	fLG5va2uPCxNpBzpMfW4OolMr/ZvQZV4CcAnkqEv2EE+suSBBcHNQUydPOs8auuWb/Pwx6A8ND8YU
	s+Q75K9i7PNOAzSpofsn+jmP5xU4JVugglaXQ+519BRpyDp1U/VuQZgbjJgW5Tng1rThOCTDIqlaZ
	CDDuprjz2JBAfR9eR/2ofKEJlLuZa2122dkaF/2fjTh4ST1hJku3/1/O44Bd/quTVghs1oe056u5N
	AgD59otLsu3ljxkFfFFsCgdD7p6Opb6+/r/VJ44v0rGHOr/l2XMjBfPJ0VS0AUYTIbrq5HQsfIqTn
	vW8/FtZxEvSzulXRYSAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTpMt-0000000451N-1JPr;
	Mon, 23 Jun 2025 22:10:23 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTl9b-00000003aEl-3XZl
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Jun 2025 17:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1750700421;
 bh=vlOL8X69KAf43rpa448wfskj/jjDGmOWw431Aoz2DQk=;
 b=GFd696Wa5Je+w8vTzSWF9uSWArgIwmMFL740c1kThISbNSmSTC4/xagn34VlFRya1movD/RQk
 dJIQ3iC8BGGJYrAiG1s6NegPMViP7IArr+bm2bEsFGwHPcUJ0urkrubHxn0aIwfLfQP5eYPEhzi
 Qme2F66cHQIyMNZXUlJ5XtNJXLMVPD139EVe5XxGEAw09pyhosRCYeg7TQM0ztUKaVM0+aoXHld
 4nN2P73JAsxZCVuI4oI5vuYP2NZjIcKjmQ+f6WC14rEJO138be81/7lnLXU4HSUuZZpDQgat5Xo
 nfwn74eCtlG3W0/hzBrK85ywzEFVPb9OVvTbrzPOjg+A==
X-Forward-Email-ID: 6859917f54073d00e4b5a183
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <dd1d0676-4eaa-4df7-b557-676b3de9a52e@kwiboo.se>
Date: Mon, 23 Jun 2025 19:40:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM
 Sige5
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Alexey Charkov <alchark@gmail.com>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <3286000.Y6S9NjorxK@phil>
 <CABjd4YyaNF1zosFFi6hEsZanPDxoaa1h4Dpd6uTPRwA3BZn0=w@mail.gmail.com>
 <5897576.DvuYhMxLoT@phil>
 <CABjd4Yy8WeXKmmxh2-TjjF5-ABy-NzzJsWpt1KvSjJqTHh0Xwg@mail.gmail.com>
 <CABjd4Yz4NbqzZH4Qsed3ias56gcga9K6CmYA+BLDBxtbG915Ag@mail.gmail.com>
 <36711B65-DD45-4539-BD9C-0382936FD0A3@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <36711B65-DD45-4539-BD9C-0382936FD0A3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_104024_238552_B6A1AE6F 
X-CRM114-Status: GOOD (  10.55  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, XiaoDong Huang <derrick.huang@rock-chips.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNS0wNi0yMyAxNzowMiwgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+IAo+IAo+PiBXaWFk
b21vxZvEhyBuYXBpc2FuYSBwcnpleiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+
IHcgZG5pdSAyMyBjemUgMjAyNSwgbyBnb2R6LiAxNTo1ODoKPj4KPj4gT24gTW9uLCBKdW4gMjMs
IDIwMjUgYXQgMToxOeKAr1BNIEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4+Pgo+Pj4KPj4KPj4gT2theSwgSSd2ZSBiaXNlY3RlZCB0aGlzLgo+Pgo+PiBUTERSOiBM
aW51eCBhbmQgdS1ib290IHNlZW0gdG8gaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggaXQsIG9wZW5z
b3VyY2UKPj4gVEYtQSBkb2Vzbid0IHdvcmssIGJpbmFyeSBCTDMxIHN0YXJ0aW5nIHdpdGggdjEu
MDkgZG8gbm90IHdvcmsuIEJMMzEKPj4gdjEuMDggYW5kIGVhcmxpZXIgd29yayBmaW5lLgoKdjEu
MDkgYWRkZWQgc3VwcG9ydCBmb3IgMSBHSHogaHJ0aW1lciBpbiBhZGRpdGlvbiB0byB0aGUgbm9y
bWFsIDI0IE1IegpyYXRlLiBNYWlubGluZSBVLUJvb3QgbWF5IG9ubHkgc3VwcG9ydCB1c2Ugb2Yg
MjQgTUh6IGhydGltZXIsIHVuc3VyZQp3aGF0IGltcGFjdCB0aGUgaHJ0aW1lciByYXRlIGhhcy4g
TWl4aW5nIGJsb2JzIHdpdGgvd2l0aG91dCAxIEdIegpzdXBwb3J0IGlzIGtub3duIHRvIGNhdXNl
IGlzc3Vlcy4gQXQgb25lIHBvaW50IHRoZSBsYXRlc3QgcmtiaW4gdHJlZSBtYXkKaGF2ZSBjb250
YWluZWQgaW5jb21wYXRpYmxlIHJrMzU3NiBibG9icyAobWl4ZWQgMSBnaHogdnMgMjQgbWh6IHJh
dGUpLgoKRGlkIHlvdSB0cnkgd2l0aCBuZXdlciBibG9icywgaS5lLiBkZHIgaW5pdCB2MS4wOSwg
YmwzMSB2MS4xOSBibG9icyBbMV0KYW5kIG1haW5saW5lIFUtQm9vdCBbMl0gPwoKWzFdIGh0dHBz
Oi8vZ2l0aHViLmNvbS9yYWR4YS9ya2Jpbi9jb21taXRzL2RldmVsb3AtdjIwMjUuMDQvClsyXSBo
dHRwczovL3NvdXJjZS5kZW54LmRlL3UtYm9vdC9jb250cmlidXRvcnMva3dpYm9vL3UtYm9vdC8t
L2NvbW1pdHMvcmszNTc2CgpSZWdhcmRzLApKb25hcwoKPiAKPiAKPiBqdXN0IGZ5aTogCj4gdG8g
Y29uZmlybTogcmVwbGFjaW5nIG9ubHkgYmwzMSB0byAxLjA4IG1ha2VzIGFsbCBnb29kCj4gd2l0
aCBwZXJmIGdvdi4gY2xvY2tzIHN0YXlpbmcgb24gMjIwMC8yMzAwCj4gY2xvY2sgZXN0aW1hdGlv
bnMgYXJlIHByZWRpY3RhYmxlLCBjb25zdGFudCBhbmQgZXN0aW1hdGluZyBjb25zdGFudGx5IDI0
MDAKPiB1eCBpcyDigJ5saWtl4oCdIG9uIDM1ODgKPiAKPiBBbGV4ZXk6IG1hbnkgdGh4IGZvciBm
aW5kaW5nIHJvb3QgY2F1c2UgY29tcG9uZW50IQo+ICAgCj4gICAgCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
