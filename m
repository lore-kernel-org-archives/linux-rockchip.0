Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DF55D148B7
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 07:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlTphwYatq2rExFRAa9bXYr8sS907txXm8LJvT1wqog=; b=2Tcd+HXs894Tsr
	UeyjPmou0B+SFsQ0QRb2LuXL6UIkmHh0J3AvnikfDTV9m6fv8ceVHC2z0lbKXDQoTzcyTL7XgltId
	NFDTIKLqkIaVGVxXxaKte+UZ2hU8ZytkRj0F2CqpmYzZTvO+uP+hJy/kn7I084R5po1qugLRGg9ui
	0dumOLpzBMAKT9mOMHa5+hAzrt0KS3ydHl7lfDBffiaxR+I69X/Clw7Al2ISwryv7ST1QJxjv8IuP
	otiMxe3IRfr681dL62QQOaRDro5fQM+nJoKRQDcKlbZX6WFbdK/WI3LIbyv1flvUbuOvShr10gLYU
	blfG+V/xBiAb8SKmsATg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdkfj-0000000G7gc-2yFE;
	Thu, 08 Jan 2026 07:43:07 +0000
Received: from mail-m19731119.qiye.163.com ([220.197.31.119])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdkfe-0000000G7df-3nji;
	Thu, 08 Jan 2026 07:43:06 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fed15929;
	Thu, 8 Jan 2026 15:42:55 +0800 (GMT+08:00)
Message-ID: <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
Date: Thu, 8 Jan 2026 15:42:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Alexey Charkov <alchark@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
 <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
X-HM-Tid: 0a9b9c8efda503abkunm2d36d937104d66
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh4dGFZNGU1DGExCHR0dQx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0
	pVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=Y8+YIwoHc856GmeEMveVCfqT8KiQX1sselQNiwuq8B+h7JxTb9Q6cm+VsiJNeOGmlbJah+Ts55e0jhCk4PbqtrqwdlQcC0zWYdd+gcWRlE3aMubiYhePGU1YnPFkx4+hkYAussZWBv/V+aPUBgMS0yjHUgQaMbwRhZ2PCMXTLAA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=V9rWjfplznBvilASYj5bEBiyrUdrnhQnLhBnfs2cv1g=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_234305_217286_5FE2B896 
X-CRM114-Status: GOOD (  15.62  )
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

SGVsbG8gQWxleGV5LCBBbmRyZXcsCgpPbiAxLzgvMjAyNiAyOjUzIFBNLCBBbGV4ZXkgQ2hhcmtv
diB3cm90ZToKPiBPbiBXZWQsIEphbiA3LCAyMDI2IGF0IDEwOjE44oCvUE0gQW5kcmV3IEx1bm4g
PGFuZHJld0BsdW5uLmNoPiB3cm90ZToKPj4KPj4+ICsmZ21hYzAgewo+Pj4gKyAgICAgY2xvY2tf
aW5fb3V0ID0gIm91dHB1dCI7Cj4+PiArICAgICBwaHktbW9kZSA9ICJyZ21paS1yeGlkIjsKPj4K
Pj4gcmdtaWktcnhpZCBpcyBvZGQuIERvZXMgdGhlIFBDQiByZWFsbHkgaGF2ZSBhbiBleHRyYSBs
b25nIFRYIGNsb2NrCj4+IGxpbmUsIGJ1dCBhIHNob3J0IFJYIGNsb2NrIGxpbmU/Cj4+Cj4+IFRy
eSBjaGFuZ2luZyB0aGlzIHRvIHJnbWlpLWlkLCBhbmQgZHJvcCB0aGUgdHhfZGVsYXkgcHJvcGVy
dHkuCj4gCj4gQWN0dWFsbHkgaXQgd291bGQgYmUgZ3JlYXQgaWYgUm9ja2NoaXAgY291bGQgY2xh
cmlmeSB0aGUgZGVsYXkKPiBkdXJhdGlvbiBpbnRyb2R1Y2VkIGJ5IGEgc2luZ2xlIGRlbGF5IGVs
ZW1lbnQgaW4gR01BQy1JT01VWCBkZWxheQo+IGxpbmVzLCB3aGljaCBhcmUgY29udHJvbGxlZCBp
biB0aGUgR01BQyBkcml2ZXIgYnkgdGhlIHt0eCxyeH1fZGVsYXkKPiBwcm9wZXJ0aWVzLiBNYXli
ZSB3ZSBjb3VsZCB0aGVuIHN3aXRjaCB0byB1c2luZwo+IHt0eCxyeH1faW50ZXJuYWxfZGVsYXlf
cHMgZm9yIGZpbmUtdHVuaW5nIHRoZSBkZWxheXMgb24gdGhlIEdNQUMgc2lkZQo+IGFzIGVudmlz
YWdlZCBpbiBEVCBiaW5kaW5ncyBbMV0sIGFuZCB1c2UgcGh5LW1vZGUgPSAicmdtaWktaWQiCj4g
dGhyb3VnaG91dC4gQ2hhb3lpLCBhbnkgY2hhbmNlIHlvdSBjb3VsZCBhc2sgYXJvdW5kIGluIHlv
dXIgaGFyZHdhcmUKPiB0ZWFtPwo+IAo+IEN1cnJlbnRseSB0aG91Z2ggcmVtb3ZpbmcgdGhlIGRl
bGF5cyBhdCBHTUFDIHNpZGUgYWx0b2dldGhlciBjYXVzZXMKPiB1bnN0YWJsZSBsaW5rIG9wZXJh
dGlvbiAtIHNlZSBbMl0gZm9yIGV4YW1wbGUuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS90
b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L2V0aGVybmV0LWNvbnRyb2xsZXIueWFtbCNMMzQyLUwzNDcKPiBbMl0gaHR0cHM6Ly9n
aXRsYWIuY29sbGFib3JhLmNvbS9oYXJkd2FyZS1lbmFibGVtZW50L3JvY2tjaGlwLTM1ODgvbGlu
dXgvLS9jb21taXQvMzcyZjNlOWFlNjJjYzYyY2RmMjU0MzM5MWVhNTdiZTZiYjU0OGEwYwoKU29y
cnksIHRoaXMgcHJvYmxlbSBoYXMgYmVlbiBkaXNjdXNzZWQgbWFueSB0aW1lcyBiZWZvcmUuIEl0
J3MgYmVjYXVzZSAKdGhlIGdtYWMgb24gdGhlIFJvY2tjaGlwIHBsYXRmb3JtIGN1cnJlbnRseSBy
ZWxpZXMgb24gc2V0dGluZyB0aGUgCmNvcnJlc3BvbmRpbmcgZGVsYXkgdmlhIHBoeS1tb2RlIFsz
XS4KClszXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvbXFveWpuN21ucTZ0bXQ2bjZvZXY0
d2EzaGVyamF4bHVwbWwyZm1jYW1wd2lhanZqNGFAcjV6czRkM2pkbTVwLwoKVGhlIGRlbGF5IGlu
dHJvZHVjZWQgYnkgdGhlIGRlbGF5IGxpbmUgaXMgbm90IGFic29sdXRlLiBJbiByZWFsaXR5LApp
dCBkZXBlbmRzIG9uIGZhY3RvcnMgc3VjaCBhcyB0aGUgY2hpcCdzIGRlc2lnbiBhbmQgcHJvY2Vz
cyB0ZWNobm9sb2d5LgoKQW5kIGZvciBSSzM1NzYsIHlvdSBjYW4gYXNzdW1lIHRoYXQ6CgkKCXRp
bWUobnMpID0gMC4wNTc5ICogZGVsYXlfbGluZV9jb3VudCArIDAuMTA1CgpGb3IgZXhhbXBsZSwg
dHhfZGVsYXkgPSA8MHgyMD4gbWVhbnM6CgoJdGltZSA9IDAuMDU3OSAqIDB4MjAgKyAwLjEwNSBu
cyA9IDEuOTU3OCBucwoKQW5kIEkgYmVsaWV2ZSB7dHgscnh9X2ludGVybmFsX2RlbGF5X3BzIGlz
IGluZGVlZCBhIGdvb2QgaWRlYS4gCkknbGwgdHJ5IHRvIGFkZCB0aGVtIGluIHYzLiBUaGFua3Mu
CgotLSAKQmVzdCwgCkNoYW95aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
