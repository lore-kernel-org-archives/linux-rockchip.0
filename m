Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BB17C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Mar 2022 08:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject
	:MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNa/q34xmLVMD9pF+5WapQMJoYOLPQ4OIdZVEkBf4MA=; b=KTHomkHZaNREgr
	DU2CPw4qTJJcRLLswbaAVDis4yi6xdgVkasqrIp0dwWWXTYINyOYM0vnFW9idmwR+8bv/FlnZIEZR
	IQ4zdl5iXyu7RzXunN/8jRRvinEcmdL6n3BCmv5mVYIQF8AcJhs++qkJUUTz5Uckzozg3nl8DPOW6
	SC8KQxOovU1O81BjhmAlwNFed1bPlbLeVxD5AHkt07qYpD3l+C/tPF4mRjWlH5AEEBI+csHGdUS+u
	T1wifo+wmC9UdhmN+kJtke+DTLMfhEmaO3e9sDqO/7uW3DaZ6j4NCPQthACWzW1egELNCsTKTTdQz
	nYjYMnGp7Y/Qmbu3o42g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSx5b-000wO6-Ug; Sat, 12 Mar 2022 08:27:03 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSx5Z-000wMs-70; Sat, 12 Mar 2022 08:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1647073591;
 bh=PzOAE5rXR+jIsiQ5R3ZR6h3y+9g+I2HOnQam+rWR1ow=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=JKbUtuisOiDU63bEHeVHPU9udH2LIL+zhJe4AI3xGdDR8BGNJHnYnk5xI9Wkw9Avs
 wFlMq2asg8voxb1a1MJ5JQIB83e7gE8WesvQXw7sH0v1sReZlOHHIAW3jCp+X1i3z1
 gjTEbrq/5YH1jV6zCSkoaSuHIJcLMkki6SUfm960=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([157.180.227.225]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mw9UE-1oIiqx152y-00s8vb; Sat, 12
 Mar 2022 09:26:31 +0100
Date: Sat, 12 Mar 2022 09:26:22 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <05309a59-85cd-2434-6435-6fd956fa75d6@opensource.wdc.com>
References: <20220311210357.222830-1-linux@fw-web.de>
 <05309a59-85cd-2434-6435-6fd956fa75d6@opensource.wdc.com>
MIME-Version: 1.0
Subject: Re: [PATCH v6 0/6] Add sata nodes to rk356x
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org
CC: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <8CEEC721-CA8F-41C9-8EB4-DBBB7CB0726F@public-files.de>
X-Provags-ID: V03:K1:kn5t/XFc+F6nThuScJ4bfueIMNUqBrgI3e1gtB3B/iZp1moNrVq
 I7MfyYsM9m+p1RWSJnqlAuesYb/H3Q+Mc8mMDEW00DHrnAMJUle3qGGIeDwXXdoTl6TGcEu
 Ct8LGLn7WJfV8bJakNHZWZddM+az4X7kYZ9q9OwPDH6LVx47OrqXiJtrpXwAQC2XLuwc4GH
 iwMOhZbtih402k4K3/5ig==
X-UI-Out-Filterresults: notjunk:1;V03:K0:SeXzE6ppK/U=:q+9ZYBG+jx9Jo2XXHol5R+
 OtNZOsKQMXfidpgp3V7YyWjwWjSembGr/Y8800nhZ8FDuRaqQUQQI32BkBg4W3sBW/69V8EHD
 fzEuMD0YqhkEQKXLBUOxlJ53zD5dCsrh9TljZ0w0YY4ZUfmvkQFDebjQGYbaHIS3EMTs9MDH/
 3ecWzcjfdLJ1/XhM+Jrr6o7zdreWy2e6GJPz5CGoN1Aa0MQgod5aP4F3K6KBAcisTwzd77HMK
 NYyWpt9y8g/OG04ldFUbmsCbn+VS4K3ZGyYVArjxBwxLZQnPMCzjdSHn1adE95jcLdIiW9xtk
 P9x8VEXk38L0PndNgNsHQzTDreJQCUmX3Jj51ItlKNt3Fk0PBwTg7+0JBay+YpPGBPiPkJRP0
 kar63jBF02niFSER43zXsJD9gnXSn4mMpiVQ6aj6GGzWcx2IahqmFSKYe1PMZXsOK7c1mxNRo
 seDmDB0E3hJ7QtQRbUakdkuK/ONS1hGaMFK0lii77J26FmpesG0d5Gf/txFn92RFedXwmGUJU
 ZDGQaSsLjlDNCvhPJwnRjnUeZ+StxsFxqiZ6yAfwwjFqaDwXI5GRMPlAAmEvLRGwnkpGc1Bn1
 BsY+jPPRTYYIt8/PXQg+nnGnc7nXhCvZ4BO1Kn8jcbhDZ+lOvs/Umx/PpfkdV7YUDQuNKUz/4
 1O6Vzb7EBvl5q0iQplYbPTSimmb+33Gok8giMUZxmYFztIn+JzO+Zwke4iOR/VkjXDjxz0d0D
 u5xSCFJXpI8KZ2mCRxftXLgFZH14RjfEeQVN0rl0YUViBshRDyGcgjzxQc0nPmCzuzbtSe3rn
 +r/dtSOZzTc/8kDYNfe1sAd60D4CHC37QD7vxGZunFLSALIijxDmexL5Bm0hItLFYCK5ORxaD
 UHHEyiWi3BYF+KXhYaJAfbcOb7nrz/Vyuyl+6qDNQndVh/3yR5rQ6aYNNUZsWQMbTLRVhli1O
 U6yhsm4kmwXTF2OUoMYjEWCH2CezLY8Zdi9nyQyWiuLm86YbpFB2qgsMypL2HzCksli2Rgop0
 iGq+IkjG7c11ibFMjdGHWi5dHWAtKUeFbMoLhbTfhGV+0rx66UjS/dsV9EafHVRs5HKqg4wGR
 QR9C4zyXoh9044=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220312_002701_626070_6078A1F0 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFtaWVuLAoKQW0gMTIuIE3DpHJ6IDIwMjIgMDk6MDA6NTMgTUVaIHNjaHJpZWIgRGFtaWVu
IExlIE1vYWwgPGRhbWllbi5sZW1vYWxAb3BlbnNvdXJjZS53ZGMuY29tPjoKPk9uIDMvMTIvMjIg
MDY6MDMsIEZyYW5rIFd1bmRlcmxpY2ggd3JvdGU6Cj4+IEZyb206IEZyYW5rIFd1bmRlcmxpY2gg
PGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+PiAKPj4gVGhpcyBTZXJpZXMgY29udmVydHMgdGhl
IGJpbmRpbmcgZm9yIGFoY2ktcGxhdGZvcm0gdG8geWFtbCBhbmQgYWRkcwo+PiBzYXRhIG5vZGVz
IHRvIHJvY2tjaGlwIHJrMzU2eCBkZXZpY2UgdHJlZXMuCj4KPlJvYiwKPgo+SSBzYXcgeW91IHRv
b2sgcGF0Y2hlcyAxLCA0IGFuZCA1LiBXaGF0IGFib3V0IHRoZSBvdGhlcnMgPyBBcmUgeW91Cj50
YWtpbmcgdGhlbSBvciBzaG91bGQgSSB0YWtlIHRoZW0gdGhyb3VnaCB0aGUgQVRBIHRyZWUgPwoK
SW1obyB0aGUgZHRzICJmaXhlcyIgc2hvdWxkIGJlIHRlc3RlZCBieSBzb21lb25lIGhhdmluZyBz
dWNoIGJvYXJkIG9yIGF0IGxlYXN0IGJlIHJldmlld2VkLgoKSSBvbmx5IGZpeGVkIHRoZSBiaW5k
aW5nIHdhcm5pbmdzLGJ1dCBpJ20gbm90IHN1cmUgaXQgYnJlYWtzIGhhcmR3YXJlIGFzIGkgY2Fu
bm90IHRlc3QgZnVuY3Rpb24uCgpBZmFpayBsYXN0IHBhcnQgc2hvdWxkIGdvIHRocm91Z2ggSGVp
a29zIHRyZWUuCgpyZWdhcmRzIEZyYW5rCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
