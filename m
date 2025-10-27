Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C54ECCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 14:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COMuNGQ7Awx2arxwF+7qb26/Ls5fArhwqZhjmKBDk0w=; b=z5KWGPHA9ssYyJ
	+KCAblUXqozKFYeqaY6T6S7fzfS+D4D7BfrBNBrg41wYE9xcy44dWU3AIHy1OcFcKreutB91OLYWk
	pQJxjs9NXGqDfb1kTHEbIP28RKqTcx2aAy8q+cu6Yy3z2l6YKbDPPEImgDJAVHFFsIxP68temm3h4
	tA3KqD1lIZIIymjIpFRq7Zl+g5j9+TtI4Z5TXwRwuuOqbrQolJiqpRFRjk6UHcGjuv402nR3kySu4
	cj6fSoxtujoKlEwKQ2hvh7OZ4q2e35MBw6uG9p2bxfEXxLqQcDF9JY9OVuemTtbEmqZquDoxXgJ5c
	NF2nmTJ7wXsgY/222UoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDO49-0000000E8Bj-04Cv;
	Mon, 27 Oct 2025 14:19:21 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDO46-0000000E8B0-1Q24;
	Mon, 27 Oct 2025 14:19:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761574736; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=DnsobMsqiu82DegXihbeMBLp5uuwh1vMC8jsMkr3N4QPhfCasmpvScCeHKPCNXGxtNk/ZeuUNZzXkVsQ4DEaI4PVKafIgPQ+eJTP+gfGoCN9uPGehZe1zxlfLcY7emdqNdzs24xcvwRS090s0BoDLfdmN6NEqE8bOYkG8YPDIsM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1761574736; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uWd7MdZnKJktaRLhzxqLomvXSX44XMh48NVBRNGV46U=; 
	b=mKNpmJBiq+nVPl+HJYgX4lLYWnaWY9Wo+RgKK92QFOyl3XRLEfo88iqOti5wpwottZowSzg2uDv4MioyxK20G3K3W5+BsD/qI7OXnzOcOviQWv4E0wTU3ZUAH3W+omyDdMsmz+3jcg2P8gtAgczNBvBYdLfELFEceO1+536iLcA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1761574736;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=uWd7MdZnKJktaRLhzxqLomvXSX44XMh48NVBRNGV46U=;
	b=C6h1NsOLBD7bAPa9jAW11Uy8yQlfpSrdASivQflXlTDwWXpU73X/4LXh6ch1VEgT
	jbVyLz8fWSv7/gAYgRrZCseop4D0QrOhweKv5iet4K9r1VPUrCDwfIyeL49ud/Sy59X
	P/TOVq5fs2xAl4qIsQUjCoHyh2dJN8PujpsNqRKA=
Received: by mx.zohomail.com with SMTPS id 1761574730100360.25318619661607;
	Mon, 27 Oct 2025 07:18:50 -0700 (PDT)
Message-ID: <edabca63-594e-44ae-8a3d-0f60987a8664@collabora.com>
Date: Mon, 27 Oct 2025 10:18:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add vdpu 381 and 383 nodes
To: Diederik de Haas <diederik@cknow-tech.com>, linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 Alexander Shiyan <eagle.alexander923@gmail.com>, kernel@collabora.com,
 Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Damon Ding <damon.ding@rock-chips.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 linux-arm-kernel@lists.infradead.org, Patrick Wildt <patrick@blueri.se>,
 Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
References: <20251020212009.8852-1-detlev.casanova@collabora.com>
 <DDQSO2HR1BFU.2JONNHRBR0LR5@cknow-tech.com>
Content-Language: en-US
From: Detlev Casanova <detlev.casanova@collabora.com>
In-Reply-To: <DDQSO2HR1BFU.2JONNHRBR0LR5@cknow-tech.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_071918_438126_8148E366 
X-CRM114-Status: GOOD (  29.25  )
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

SGkgRGllZGVyaWNrLAoKT24gMTAvMjQvMjUgMTU6MjAsIERpZWRlcmlrIGRlIEhhYXMgd3JvdGU6
Cj4gSGkgRGV0bGV2LAo+Cj4gT24gTW9uIE9jdCAyMCwgMjAyNSBhdCAxMToyMCBQTSBDRVNULCBE
ZXRsZXYgQ2FzYW5vdmEgd3JvdGU6Cj4+IEFkZCB0aGUgbm9kZXMgZm9yIHZkcHUgMzgxIGFuZCAz
ODMsIHJlc3BlY3RpdmVseSBSSzM1ODggYW5kIFJLMzU3Ni4KPj4gVG8ga2VlcCBjb21wYXRpYmls
aXR5IHdpdGggb2xkZXIgdmFyaWFudHMsIHRoZSByZWcgcmFuZ2VzIG9yZGVyIGlzIG5vdAo+PiBp
biByZWdpc3RlciBvcmRlciBzbyB0aGF0IHRoZSBmdW5jdGlvbiByZWcgcmFuZ2UgaXMga2VwdCBm
aXJzdC4KPiBUaGlzIGlzIGEgZ3JlYXQgY29tbWVudCwgd2hpY2ggSSdkIGhhdmUgcHJlZmVycmVk
IHRvIGhhdmUgc2VlbiBpbiB0aGUKPiBjb21taXQgbWVzc2FnZXMgdGhlbXNlbHZlcy4KPgo+IEVz
cGVjaWFsbHkgc2luY2UgSSdtIGdldHRpbmcgRFRCIHZhbGlkYXRpb24gd2FybmluZ3M6Cj4KPiAg
ICBEVEMgW0NdIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWFybXNvbS1zaWdl
NS5kdGIKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpOjEyOTIuMzAt
MTMxNC41OiBXYXJuaW5nIChzaW1wbGVfYnVzX3JlZyk6Cj4gL3NvYy92aWRlby1jb2RlY0AyN2Iw
MDAwMDogc2ltcGxlLWJ1cyB1bml0IGFkZHJlc3MgZm9ybWF0IGVycm9yLCBleHBlY3RlZCAiMjdi
MDAxMDAiCj4gICAgRFRDIFtDXSBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1y
b2NrLTRkLmR0Ygo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2k6MTI5
Mi4zMC0xMzE0LjU6IFdhcm5pbmcgKHNpbXBsZV9idXNfcmVnKToKPiAvc29jL3ZpZGVvLWNvZGVj
QDI3YjAwMDAwOiBzaW1wbGUtYnVzIHVuaXQgYWRkcmVzcyBmb3JtYXQgZXJyb3IsIGV4cGVjdGVk
ICIyN2IwMDEwMCIKPgo+Cj4gRm9yIHNvbWUgcmVhc29uIEknbSBub3QgZ2V0dGluZyB0aGF0IGZv
ciByazM1ODgsIHdoaWNoIEkgbmVlZCB0bwo+IGludmVzdGlnYXRlIGZ1cnRoZXIuIFRlY2huaWNh
bGx5LCBJIHJhbiBteSBEVEIgdmFsaWRhdGlvbiBzY3JpcHQgb24geW91cgo+ICdhZGQtdmRwdTM4
MS1hbmQtMzgzLXRvLXJrdmRlYy12My1vbi1uZXh0JyBicmFuY2gsIGJ1dCBJIGRvbid0IHNlZSBo
b3cKPiB0aGF0IHdvdWxkL2NvdWxkIGNoYW5nZSB0aGUgb3V0Y29tZS4KPgo+IE15IHZhbGlkYXRp
b24gc2NyaXB0IGRvZXMgZXNzZW50aWFsbHkgdGhpczoKPiBgYG1ha2UgQ0hFQ0tfRFRCUz15IFc9
MSAkKGdldF9teV9kdGJzKWBgCj4KPiAoJ2dldF9teV9kdGJzJyByZXR1cm5zIGEgbGlzdCBvZiBk
dGIgZmlsZXMgSSB3YW50IHRvIGNoZWNrKQo+Cj4gU28gaXQgbG9va3MgbGlrZSB0aGUgRFRCIHZh
bGlkYXRpb24gdG9vbCBpcyBub3QgaGFwcHkgdGhhdCB0aGUKPiByZWcgcmFuZ2VzIGFyZSBub3Qg
c29ydGVkIGluICdwcm9wZXInIG9yZGVyLgo+Cj4gTm90ZSB0aGF0IHRoZSBgYFc9MWBgIGlzIGVz
c2VudGlhbCB0byBzZWUgdGhlIHdhcm5pbmcsIGl0IGRvZXMgbm90IHNob3cKPiB1cCB3aGVuIGBg
Vz0wYGAgaXMgdXNlZC4KPiBJJ2xsIGxlYXZlIGl0IHVwIHRvIHlvdSBhbmQgdGhlIG1haW50YWlu
ZXJzIHRvIGp1ZGdlIHdoZXRoZXIgdGhpcyBpcwo+IHByb2JsZW1hdGljIG9yIG5vdCwgYnV0IHdh
bnRlZCB0byBtZW50aW9uIGl0LgoKVGhlIG1haW4gcmVhc29uIGZvciBkb2luZyBpdCB0aGlzIHdh
eSBpcyB0aGF0IHRoZSBiaW5kaW5ncyBhcmUgYWRkZWQgdG8gCnRoZSBhbHJlYWR5IGV4aXN0aW5n
IG1lZGlhL3JvY2tjaGlwLHZkZWMueWFtbCBmaWxlLgoKSW4gdGhlIHByZXZpb3VzIHZlcnNpb24g
b2YgdGhlIGRlY29kZXIsIG9ubHkgdGhlICJmdW5jdGlvbiIgcmVnaXN0ZXJzIApleGlzdGVkLiBC
dXQgaW4gdGhlc2UgMiBTb0NzLCB0aGUgZnVuY3Rpb24gcmVnaXN0ZXJzIGFyZSBwcmVwZW5kZWQg
YnkgYSAKcmFuZ2Ugb2YgMHgxMDAgcmVnaXN0ZXJzIGNhbGxlZCAibGluayIuCgpBdCB0aGUgYmlu
ZGluZyBsZXZlbCwgSSBvbmx5IGNvdWxkIGFkZCAibGluayIgYW5kICJjYWNoZSIgYWZ0ZXIgCiJm
dW5jdGlvbiIsIHNvIHRoYXQgcmszMzk5IHVzZXMgIm1heEl0ZW1zOiAxIiBhbmQgdGhlIG90aGVy
IDIgdXNlIAoibWluSXRlbXM6IDMiLgoKVW5mb3J0dW5hdGVseSwgdGhhdCBmb3JjZXMgdGhlIG9y
ZGVyIGluIHRoZSBkZXZpY2UgdHJlZToKCi0gZnVuY3Rpb24KCi0gbGluawoKLWNhY2hlCgpXaGlj
aCBpcyBub3QgaW4gcmVnaXN0ZXIgb2Zmc2V0IG9yZGVyLCBtYWtpbmcgdGhlIG5vZGUgY2FsbGVk
IAp2aWRlby1jb2RlY0AyN2IwMDAwMCBoYXZlIGl0cyBmaXJzdCByZWcgZW50cnkgYXTCoDI3YjAw
MTAwLgoKSSBoYXZlIHRvIGFkbWl0IEkgb25seSBjaGVja2VkIHRoYXQgdGhlIGNoZWNrIHRvb2xz
IHdlcmUgaGFwcHkgZm9yIApyazM1ODggYW5kIGRpZCB0aGUgc2FtZSBmb3IgcmszNTc2LgoKVGhl
IG9ubHkgZGlmZmVyZW5jZSBJIHNlZSB0aGF0IGNvdWxkIGV4cGxhaW4gd2h5IGl0IHdhcm5zIG9u
bHkgb24gcmszNTYgCmlzIHRoYXQgcmszNTc2IGRldmljZSBub2RlcyBhcmUgY2hpbGRyZW4gb2Yg
Ii9zb2MiIGFuZCB0aGUgcmszNTg4IG9uZXMgCmFyZSBjaGlsZHJlbiBvZiAiLyIuCgpMZXQncyBz
ZWUgd2hhdCBtYWludGFpbmVycyB0aGluayBpbmRlZWQuCgoKRGV0bGV2LgoKPgo+IENoZWVycywK
PiAgICBEaWVkZXJpawoKPj4gQWxzbyBhZGRzIHRoZSBjb3JyZXNwb25kaW5nIGlvbW11IG5vZGVz
Lgo+Pgo+PiBOb3RlIHRoYXQgb24gUkszNTg4LCBib3RoIGNvcmVzIGFyZSBhZGRlZCBhcyBpdCBy
ZXByZXNlbnRzIHRoZSBoYXJkd2FyZSwKPj4gYnV0IHRoZSBkcml2ZXIsIGxhdGVyIHdpbGwgb25s
eSByZWdpc3RlciB0aGUgZmlyc3Qgb25lLgo+Pgo+PiBSZWdhcmRzLAo+PiBEZXRsZXYuCj4+Cj4+
IENoYW5nZXMgc2luY2UgdjI6Cj4+ICAgLSBTZXQgdGhlIGNvcnJlY3QgSVJRIG51bWJlciBmb3Ig
dGhlIHNlY29uZCByazM1ODggY29yZQo+Pgo+PiBDaGFuZ2VzIHNpbmNlIHYxOgo+PiAgIC0gU2V0
IG5vZGUgbmFtZSB0byBtYXRjaCBmaXJzdCByZWcgcmFuZ2UKPj4KPj4gRGV0bGV2IENhc2Fub3Zh
ICgyKToKPj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCB0aGUgdmRwdTM4MSBWaWRlbyBE
ZWNvZGVycyBvbiBSSzM1ODgKPj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCB0aGUgdmRw
dTM4MyBWaWRlbyBEZWNvZGVyIG9uIHJrMzU3Ngo+Pgo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTc2LmR0c2kgICAgICB8IDM2ICsrKysrKysrKwo+PiAgIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8IDc0ICsrKysrKysrKysrKysrKysr
KysKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDExMCBpbnNlcnRpb25zKCspCj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
