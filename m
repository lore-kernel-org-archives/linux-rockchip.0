Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFC48CA1009
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 12:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ETqvPG02+6bmDpsgq24803DSJxpylf6gkryrfUyfco=; b=dYI0hOH28YWfbI
	kAc8pjyq+n/E9/XeBcFDvulPyQnBYWzy6FijBkq7eqH9C9kUJvK/Q2U+1BJvKVkaxE/wzbBF2Q5/1
	bZsYzMrApeZzW5sUX+UEY8upnEVG+LD5xEkh+NYB7fAM/j+sQjIE2FYZ3uUP/+iaoCN4KrBBQFiqU
	r+ExknMy9sPJAzrVhutMMHF7SmEdZLnXaUY1ahh/FY01sDkNRoHbXmnTEj683rA9yvahV9IwLN1Z2
	F2Mgz4pQlQ+22YL9+7B6zStK51sZFs/KRY7gano77ZGKzKQ8M4F3QL2UJzz9ZkGKK0fHhx5xitK4c
	p0BY+lgNEQtIRBN9NIlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ9t-0000000HI59-486B;
	Tue, 02 Sep 2025 12:30:45 +0000
Received: from [195.187.100.5] (helo=ni.piap.pl)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNil-0000000GVYY-048k;
	Tue, 02 Sep 2025 09:54:40 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 16763C3EEACD;
	Tue,  2 Sep 2025 11:54:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 16763C3EEACD
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Adam Ford <aford173@gmail.com>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>,  Dafna Hirschfeld
 <dafna@fastmail.com>,  Heiko Stuebner <heiko@sntech.de>,  Paul Elder
 <paul.elder@ideasonboard.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
In-Reply-To: <CAHCN7xKq_o_u7PhPMcZ2W9nzrFP8+CnhaYJOyxnjpKfbMTBCEw@mail.gmail.com>
	(Adam Ford's message of "Tue, 12 Aug 2025 13:22:54 -0500")
References: <175308758352.3134829.9472501038683860006@localhost>
	<175326599663.2811177.16620980968274114885@localhost>
	<m3h5z2vw12.fsf@t19.piap.pl>
	<175344176070.2811177.10693943493658922992@localhost>
	<m3qzxyug1s.fsf@t19.piap.pl> <m3cy9futcj.fsf@t19.piap.pl>
	<m34iumujcs.fsf@t19.piap.pl> <m3zfcet41n.fsf@t19.piap.pl>
	<m3a545t789.fsf@t19.piap.pl>
	<20250812103243.GK30054@pendragon.ideasonboard.com>
	<175501095338.74722.11604545949710100799@localhost>
	<CAHCN7xKq_o_u7PhPMcZ2W9nzrFP8+CnhaYJOyxnjpKfbMTBCEw@mail.gmail.com>
Date: Tue, 02 Sep 2025 11:54:27 +0200
Message-ID: <m31popxjqk.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_025435_291490_900C423C 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpzdW1tYXJ5OgoKSSd2ZSBkb25lIGEgZmV3IGFkZGl0aW9uYWwgdGVzdHMgYW5kIGl0IHNl
ZW1zIHRoZSBNRURJQV9BWEkgY2xvY2sgaXMgdGhlCnByb2JsZW0uIFJlZHVjaW5nIGl0IHRvIDQw
MCBNSHogd2hpbGUgc3RpbGwgcnVubmluZyBNRURJQV9JU1AgYXQgNTAwIE1Iegpwcm9kdWNlcyBu
byBlcnJvcnMuCk1FRElBX0lTUCBhdCA0MDAgTUh6IGFuZCBNRURJQV9BWEkgYXQgNTAwIE1IeiBw
cm9kdWNlcyBlcnJvcnMsIHRob3VnaAoocmVnaXN0ZXIgYWRkcmVzcyBlcnJvcnMgd2hpbGUgcmVh
ZGluZyBhbmQgd3JpdGluZyBmcm9tL3RvIElTUCBNSQoobWVtb3J5IGludGVyZmFjZSkgcmVnaXN0
ZXJzLCBvbmx5IG9uIHRoZSBzZWNvbmRhcnkgSVNQIChpc3AxKSwgYW5kCmdlbmVyYWxseSBvbmx5
IHdoaWxlIHN0cmVhbWluZyBkYXRhIGZyb20gdGhlIElTUCkuCgpXaGF0IGlzIGRyaXZlbiBieSBN
RURJQV9BWEkgY2xvY2sgcm9vdD8gTUVESUFNSVg6IElTSSwgTENESUYsIElTUCwgRFdFLgoKQWNj
b3JkaW5nIHRvIGJvdGggZGF0YXNoZWV0cyAoaW5kdXN0cmlhbCBhbmQgY29tbWVyY2lhbCksIE1F
RElBX0FYSQppcyBsaW1pdGVkIHRvIDQwMCBNSHogaW4gbm9ybWFsIG1vZGUgYW5kIDUwMCBNSHog
aW4gb3ZlcmRyaXZlIG1vZGUuCkFsbCBteSBoYXJkd2FyZSBpcyBzZXR1cCBmb3Igb3ZlcmRyaXZl
IG1vZGUsIHRob3VnaCAodHdvIG1hbnVmYWN0dXJlcnMsCmJvdGggdXNpbmcgdGhlIHNhbWUgUE1J
QyBzZXR1cCkuCgpTaW5jZSBubyBoYXJkd2FyZSBpbiB0aGUgb2ZmaWNpYWwgTGludXgga2VybmVs
IHRyZWUgKERUKSB1c2VzIHRoZSBzZWNvbmQKSVNQLi4uIFNob3VsZCB3ZSBqdXN0IGFkZCBhIHdh
cm5pbmcgdG8gdGhlIGlteDhtcC5kdHNpIGFuZCBiZSBkb25lIHdpdGgKaXQ/Ck91dCBvZiB0cmVl
IGhhcmR3YXJlIHVzaW5nIGlzcDEgKGNzaTEpIG9idmlvdXNseSBleGlzdHMuCi0tIApLcnp5c3p0
b2YgIkNocmlzIiBIYcWCYXNhCgpTaWXEhyBCYWRhd2N6YSDFgXVrYXNpZXdpY3oKUHJ6ZW15c8WC
b3d5IEluc3R5dHV0IEF1dG9tYXR5a2kgaSBQb21pYXLDs3cgUElBUApBbC4gSmVyb3pvbGltc2tp
ZSAyMDIsIDAyLTQ4NiBXYXJzemF3YQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
