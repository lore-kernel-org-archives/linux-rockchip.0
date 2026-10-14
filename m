Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB9ACC6B19
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 05:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ar7LtFrIo7IGdnHrvAXjlZnaNyRjyoYRqKHKO9Krtes=; b=BYM07/MryXNTkj
	wZrSdCtKSlzzaxn1OQ81wJGeo++HJIFHnP/D0ulE/oHvHUkvs5ofWD//i+oW7kILDc/Tr6a2GUMBH
	kMu5Vb7ZnArPSXYQuNyXN1xfTlWI8j91MHhCu5ce/pwsimMIXUuCi21O2g+zhSBNH94Bxjv6M9RJj
	JRnaNqVt5hS7k85UetVe1lXQmLT8l+ZB0VGIat6QdUviMpSqz4SdrNzjyCatfVyj2ufZinzmw+Ztb
	VhXD1HN0DdHHh2UB2w0RTP4UNSfFVqxbm2DiFI8Hcu0/napsZMFyDONePnoLjy4pUhHRGn/hVKhJJ
	IdaPIUSgxijBjJe8qL7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGr95-0000000EX4O-2JGQ;
	Wed, 14 Oct 2026 05:03:19 +0000
Received: from out162-62-57-137.mail.qq.com ([162.62.57.137])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGr90-0000000EX3r-1fRu;
	Wed, 14 Oct 2026 05:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1791954184; bh=0T0zreJEKXCOs2vAHy9C7aS+rC0OoUQsDz7CaxsQtfg=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=No67Yb899+Gy5k0t1WYRFaEiPXQEASN0lMGBncIbU4m8e4fnqLIm+fEXsR5UfuJwp
	 yIrJoSxF4pMNGBdwDfBBn0Us2aUNEJN7/ZgcQUsN+oVjkPNya/0lvb6FO+i0L9mCfm
	 /mPcwbtyc9mJSpxq3lCWtLVMGaJYR9gTtyyChNfg=
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
X-QQ-XMAILINFO: MxLtP9q6S0tzjLKUKgJphWdmcFHfNjQ+Kg7zfilYfOVLccuCtqBLPDXOU/0AG3
	 hDL/EKnlaE/4Unw/PfxELEMPmMENAGsqik9zbXx65JLzWq3V7par2z3s3fqP0lxb/tS+BeO5Gu3p6
	 /wENtOGv41KbVGOZvRDWC5xLa0bWnalLVMpTNobxlr34gAcXwFbcU7+sEKEqpKvYZhrYrs4ouvi+Y
	 4gECnxuN4+7fD8JXAslDJG/R1qwFg+HuvSXHoXQMTV1CDamooQqWma0WMIq7K1/QMDbprIc9G2jEs
	 e3GD5a8sGYDS6FXCJa7xby38XshjdgNZecatCej30e/sCQZhPQokFNeC1AMMD/7G6JldqgGDQcEpR
	 8r54+y0EGdWvHX9h82jppGKe1BGXL0Xkxwtc9NUf65rTbBddyTkpkbZ0+9vw5IZzLq8XHXVpN9GkO
	 9YOpkySIos4xtYfpPTiCPH8B3NGGzjAlD1UhaTekAD70mundIhUfgbKT7H704tZBLpl5eaqEJwJKY
	 eFHlJZwlxKGagWjnLISVdl0iXGBA+ke6RjWRgx1dv2RlhC3oV9j5RZHKafNToNomSwaZVRP/bot8C
	 LVa1y9inpdOh49gA5e/mHAIHF471W6INM6UsSfdqMuPD4jThwep0vFAVYo7U+EfX3DkFA0OIv5vPO
	 2+4gqjwQ0Qihoujov7LQknNJ7Lg1QU+/2cv/hnHaSayki3+8PWY2vGb5cBeSloV09+kzMqngrEaF5
	 yMX45PfBtrNQeUqcJe83PMsreIHn8irfvpXCJtg8SBCyGHoDq0eyPQSlatJ9OefP1CYtj6hQjr5X4
	 WtplOcUl0FDukpST5Aov9n0Fv8mnYeYvSyp/FMmmog7ajNe90P6m51FWmx3gW8J3hiw6v33G2ihwt
	 SRjJwSTVa2kZ+qW0oJ4GM883eF3s0/Zz+GYQDsh16RPZvPlAG0jO8dHG2LSYxuRr6yzJnLB3O9nID
	 4mPLuNj3oH8wOXjcEChVobv2ru0XNLfM6Jw83mCNqK/XGWC+Sot4MbqME0At8ZvTDGNQegoW9MMWu
	 29dv36fwBYAFDYJgSlKIrftX3a8AIGo5TYxKVh22MaBVmKqs=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?YmlnZWFzeQ==?=" <bigeasy@linutronix.de>, "=?utf-8?B?Y2xya3dsbG1z?=" <clrkwllms@kernel.org>, "=?utf-8?B?cm9zdGVkdA==?=" <rostedt@goodmis.org>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>
Subject: Re: [PATCH net] can: rockchip_canfd: stop bus-off restart before closing the device
Mime-Version: 1.0
Date: Wed, 14 Oct 2026 13:03:02 +0800
X-Priority: 3
Message-ID: <tencent_D5994C4DC2CF087A800762B3DF5F53010D06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_5802EE88434010229EDF7A53084D994C6106@qq.com>
	<179194843570.434549.16906326776857003512@kernel.org>
In-Reply-To: <179194843570.434549.16906326776857003512@kernel.org>
X-QQ-mid: xmsezb41-0t1791954182tg1aae6rv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_220314_995667_AC811130 
X-CRM114-Status: GOOD (  17.13  )
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

SGksCgpJIGNoZWNrZWQgYWxsIGZvdXIgZmluZGluZ3MgYWdhaW5zdCB0aGUgY3VycmVudCBicmFu
Y2guCgo+IC0gW01lZGl1bV0gVGhlIHBhdGNoIG5vdyBoYXMgcmtjYW5mZF9zZXRfbW9kZSgpIHJl
dHVybiAtRU5FVERPV04gd2hlbiBpdAo+ICAgc2VlcyBwcml2LT5jbG9zaW5nLgo+IC0gW01lZGl1
bV0gcmtjYW5mZF9zdG9wKCkgcHVibGlzaGVzIHByaXYtPmNsb3NpbmcgPSB0cnVlIChsaW5lIDc3
NikKPiAgIGJlZm9yZSBpdCBtYXNrcyB0aGUgY29udHJvbGxlciBpbnRlcnJ1cHRzIHdpdGjigKYK
ClRoZSB0d28gaXNzdWVzIGludm9sdmluZyBjbG9zaW5nIHdlcmUgYWRkcmVzc2VkIGluIHYyLgoK
PiBbU2V2ZXJpdHk6IEhpZ2hdCj4gVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMg
cGF0Y2gsIGJ1dCB0aGlzIHBhdGNoIGhhcmRlbnMgdGhlCj4gcmVzdGFydCBwYXRoLCBzbyBpcyBp
dCBzYWZlIHRvIHJlaW5pdGlhbGl6ZSB0aGUgdGltZXN0YW1wIGRlbGF5ZWRfd29yawo+IGhlcmU/
Cj4gLi4uCj4gV291bGQgaXQgd29yayB0byBjYWxsIElOSVRfREVMQVlFRF9XT1JLKCkgb25jZSBh
dCBwcm9iZSB0aW1lLCBhbmQgdG8gY2FsbAo+IGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmcHJp
di0+dGltZXN0YW1wKSBpbiB0aGUgcHJvY2Vzcy1jb250ZXh0IHJlc3RhcnQKPiBwYXRoIGJlZm9y
ZSB0aGUgdGltZWNvdW50ZXIgaXMgcmVpbml0aWFsaXplZD8KCkFncmVlZC4gRXhjbHVkaW5nIHRo
ZSBJUlEgaGFuZGxlciBkb2VzIG5vdCBzdG9wIHRoZSB0aW1lc3RhbXAgd29ya2VyLgpJIHdpbGwg
aW5pdGlhbGl6ZSB0aGUgZGVsYXllZF93b3JrIG9uY2UgYXQgcHJvYmUgdGltZSBhbmQgc3luY2hy
b25vdXNseQpjYW5jZWwgaXQgaW4gdGhlIHByb2Nlc3MtY29udGV4dCByZXN0YXJ0IHBhdGgsIGFm
dGVyIGV4Y2x1ZGluZyB0aGUgSVJRCmhhbmRsZXIgYW5kIGJlZm9yZSBya2NhbmZkX2NoaXBfc3Rh
cnQoKSByZWluaXRpYWxpemVzIHRoZSB0aW1lc3RhbXAKc3RhdGUuIFRoZSBidXMtb2ZmIElSUSBw
YXRoIHdpbGwga2VlcCBpdHMgbm9uLXN5bmNocm9ub3VzIGNhbmNlbGxhdGlvbi4KCgo+IFtTZXZl
cml0eTogSGlnaF0KPiBUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgdGhpcyBodW5r
IHRvdWNoZXMgdGhlIHJlcXVlc3RfaXJxKCkKPiBwYXRoIGluIHJrY2FuZmRfb3BlbigpLiBXaGF0
IGhhcHBlbnMgdG8gTkFQSSBpZiByZXF1ZXN0X2lycSgpIGZhaWxzPwo+IC4uLgo+IFNob3VsZCBj
YW5fcnhfb2ZmbG9hZF9kaXNhYmxlKCZwcml2LT5vZmZsb2FkKSBiZSBhZGRlZCB0byB0aGlzIGVy
cm9yIHBhdGg/CgpZZXMuIEkgd2lsbCBhZGQgaXQgdG8gdGhlIHJlcXVlc3RfaXJxKCkgZmFpbHVy
ZSBwYXRoLCBiZWZvcmUgc3RvcHBpbmcgdGhlCmNvbnRyb2xsZXIsIHRvIGJhbGFuY2UgY2FuX3J4
X29mZmxvYWRfZW5hYmxlKCkuIEkgd2lsbCBhZGRyZXNzIHRoaXMgYW5kCnRoZSB0aW1lc3RhbXAg
d29yayBpc3N1ZSBpbiBzZXBhcmF0ZSBwYXRjaGVzLgoKSSB3aWxsIGZpeCB0aGVzZSBidWdzIGlu
IHYzLgoKUmVnYXJkcywKQ3VuaGFvIEx1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
