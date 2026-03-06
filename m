Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 109A8F0182E
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 12:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=17QUjc7Gl6yl7Qi1iN7Hwcm2128f4PS4WJMVSmz0DwY=; b=dzYXS/ezXkuRdKrcO4QQlCrdCK
	iznMgpqmjQ6N6EhQn6QD0BrfCQzXpMKT5ey28KjrXka6JjRxAaWREvFJpgMU1wes0MTknByzlh7hd
	ZLcEOdhD0+tQFG07ExXOv/DzzEGQDERyDNfyMeCjAy8v1XZdfWJvh1QsGmfO6QQHl3Xjj1xDW82FA
	wf9qzU1+KrnaoYzEFCrnxuzBbFEqU6qNhDHzbc0QcMqPngAh+OiBmQFwmUxAqNWTvIOPKQFkdl0vf
	MklL6CSldOiI16vZ14UKJUcJNU2fbvfUnW6l4EPqb6w8P2QR27tM4Gy2uAQhNZxLWKQEcqXZCMfMe
	GOvxB68w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyU18-00000003cVX-3kwh;
	Fri, 06 Mar 2026 12:10:54 +0000
Received: from mail-m15593.qiye.163.com ([101.71.155.93])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyU16-00000003cUn-3Hoj
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 12:10:54 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36060f826;
	Fri, 6 Mar 2026 20:10:47 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 0/3] Add shaping support for Rockchip platforms
To: Heiko Stuebner <heiko@sntech.de>
References: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
 <4490342.ejJDZkT8p0@phil>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <4f288c33-7bdc-a0e3-a692-c73646687452@rock-chips.com>
Date: Fri, 6 Mar 2026 20:10:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4490342.ejJDZkT8p0@phil>
X-HM-Tid: 0a9cc30eb6bf09cckunm5f657a351437ca6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk9CH1ZCSBhDT0gdTk8aGk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=CI2VRCzStcWKQ9Ad/tb/uF2zXHBwPAPdPFrkOm+knONrKitxrmcKUZp8f0XF4plG4AumREf8NqxUz2PELXzZEY71FVyDiTQQsLQ3YADLwHK9Yp5LmVcrliYHgN27a5PV/DmWiZXe6UMOSgn6XZHUiuXZoPzIEqhlceeU/Nm+rSw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sGMSAJ+U9DbAoErYPKQSb41tdFBd5OZEpvs8FFtw5wI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_041053_008562_91760CC9 
X-CRM114-Status: GOOD (  18.75  )
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

5ZyoIDIwMjYvMDMvMDYg5pif5pyf5LqUIDE4OjQzLCBIZWlrbyBTdHVlYm5lciDlhpnpgZM6Cj4g
SGkgU2hhd24sCj4gCj4gQW0gRnJlaXRhZywgNi4gTcOkcnogMjAyNiwgMDg6NDA6MjkgTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBTaGF3biBMaW46Cj4+IHBtX3NoYXBpbmcg
aXMgaW50cm9kdWNlZCBmb3Igc29tZSBwbGF0Zm9ybXMgdG8gdGhyb3R0bGUgdGhlIG91dHN0YW5k
aW5nCj4+IGJ1cnN0IHJlcXVlc3RzIG9mIGVhY2ggSVAgdG8gcHJldmVudCBidXMgbW9ub3BvbGl6
YXRpb24uIEl0IHNob3VsZCBiZQo+PiBzYXZlZCBhbmQgcmVzdG9yZWQgYWxvbmcgd2l0aCB0aGUg
b24vb2ZmIG9mIHBtZG9tYWluLCB0aGUgc2FtZSBhcyBwbV9xb3MuCj4+IFRoaXMgcGF0Y2hzZXQg
YWRkcyBzdXBwb3J0IGZvciBpdC4KPiAKPiBDYW4gd2UgZ2V0IHNvbWUgbW9yZSBkZXNjcmlwdGl2
ZSBuYW1pbmcgZm9yIHRoZSBmZWF0dXJlIHBsZWFzZT8KPiBJbiB0aGUgY29tbWl0IG1lc3NhZ2Vz
LCBkdC1iaW5kaW5nIGFuZCBhbHNvIG5vZGUtbmFtZXMgaW4gdGhlIHNvYyBkdHNpLgo+IEJlY2F1
c2UgYW55b25lIGdsYW5jaW5nIGF0IGVpdGhlciB0aGUgYmluZGluZyBvciBkdHNpIHdpbGwgbm90
IHVuZGVyc3RhbmQKPiB3aGF0IHRoaXMgaXMsIGFuZCB3b3VsZCBldmVuIG5lZWQgdG8gY29uc3Vs
dCB0aGUgZ2l0IGhpc3RvcnkgZm9yIGFueQo+IGV4cGxhbmF0aW9uLgo+IAo+IFRoZSBmdWxsIGlu
dGVyY29ubmVjdCBpcyBub3QgcGFydCBvZiB0aGUgVFJNIEkgaGF2ZSwgYnV0IHRoZSBiaXRzIGFu
ZAo+IHBpZWNlcyBpbiBvdGhlciBwYXJ0cyBvZiB0aGUgVFJNIHNwZWFrIG9mIHRyYWZmaWMtc2hh
cGluZy4KPiAKCnRyYWZmaWMtc2hhcGluZyBsb29rcyBnb29kIHRvIG1lLgoKPiBTbyBmb3IgdGhl
IG5vZGUgSSdkIGdvIGZvcjoKPiAJc2hhcGluZ192ZXB1MTogdHJhZmZpYy1zaGFwaW5nQDI3ZjA2
MDg4Cj4gCj4gYW5kIGluIHRoZSBiaW5kaW5nIHNvbWV0aGluZyBsaWtlOgo+IAlyb2NrY2hpcCxw
bS10cmFmZmljLXNoYXBpbmcgPSA8Li4uLj4KPiAKPiBJIHRoaW5rIHRoZSB3aG9sZSBwbV9xb3Mg
dGhpbmcgaXMgYW4gb3ZlcnNpZ2h0IG9mIHRoZSBwYXN0LCBiZWNhdXNlOgo+IAo+IC0gcHJvcGVy
dGllcyBzaG91bGQgdXNlIGRhc2hlcyAiLSIgbm90IHVuZGVyc2NvcmVzCj4gLSB0aGUgcHJvcGVy
dHkgbmFtZSBpcyBSb2NrY2hpcCBzcGVjaWZpYywgc28gc2hvdWxkIGxpa2VseSBnZXQgYSBwcmVm
aXgKPiAKClllYWgsIHBtX3FvcyBpcyBmb3Igc3VyZSBhbiBvdmVyc2lnaHQgb2YgdGhlIHBhc3Qs
IEkgc2hvdWxkbid0IHdvdWxkCmV4cGVjdCB0byBmb2xsb3cgdGhlIHdyb25nIGNvbnZlbnRpb24g
aGVyZS4gV2lsbCB1cGRhdGUgdjIgbGF0ZXIuCgpUaGFua3MuCgo+IAo+IEhlaWtvCj4gCj4gCj4g
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
