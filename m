Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709D7606A333
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 09:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oDKDb2/S;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=bmsQEOzU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DwrlUyQeoXeNRi7aXs9EWmPfgvDEzZT0MucFJNG5yUY=; b=oDKDb2/SQQ4bqBPvFom2gq/EJ9
	AyC050eSX540X4YCZ7b+BO3/aPYmCW3Z4c5egSSG0raGT57/1foEloXE5kZQ71yAwImDhPRwcnr9b
	vuJRND82Ze5eegTQU16/P4Gf9wzwUjc0ImsMHrbCD/eoNmplxogXcUyzsd9Um23LiyHQD81jQfvIW
	u0m95X4B1Sli6haO4Uk2DWTWQV8Jedpf6ZQ1L5sioW6fHtxKTmhulGXvDi9c2dCoLrlVA/IP89fna
	EgYHXSQlOfi19Eeh1WiCztJcpXzb4jkE6xJPebk91K+mvskApwsK+ky0rykLkMZjJ0o4yYiM9hFNt
	1AVP3vxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR4Hm-000000067md-0z0v;
	Wed, 11 Nov 2026 09:06:30 +0000
Received: from mail-m83218.xmail.ntesmail.com ([156.224.83.218])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR4Hi-000000067lx-04Nf;
	Wed, 11 Nov 2026 09:06:28 +0000
Received: from [172.16.12.11] (gyproxy-mailtls2-entmail-virt217.gy.ntes [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 544afe262;
	Wed, 11 Nov 2026 17:06:11 +0800 (GMT+08:00)
Message-ID: <20e74412-e4d5-40bb-9565-249f029324a3@rock-chips.com>
Date: Wed, 11 Nov 2026 17:06:10 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 14/16] arm64: dts: rockchip: add NPU core domain
 clocks and resets to rk3576
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, ulfh@kernel.org,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 shawn.lin@rock-chips.com, diederik@cknow-tech.com, alchark@flipper.net,
 leonard@lausen.nl, jeff.hugo@oss.qualcomm.com, rfoss@kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261108065917.135194-1-gahing@gahingwoo.com>
 <20261108065917.135194-15-gahing@gahingwoo.com>
From: Finley Xiao <finley.xiao@rock-chips.com>
In-Reply-To: <20261108065917.135194-15-gahing@gahingwoo.com>
X-HM-Tid: 0aa1c9db8bbe03a8kunm0e16dd9f3b1c8b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTEIfVkIfTUtNGUMaSE0aS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=bmsQEOzUtCVRFu14odnqTs+fbRAN150MTPhXy26iN1vXi9lISKGIld9fP4bwih8bhnZXxhlw2jJ/5ikLqqUDLJ13t7MhEsYXsBxUc/UqdChMjyufdvzqRPn7EVrtcZBoUO8Twfo0YLGib0/0uTkv8pnEenLBwOO+hEL6oFopsTE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=tMdgjX8bYijLnolxyoTC/q9AKx2reNTEQu7tjnwBrUk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_010626_692734_5F8E2DE8 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CuWcqCAyMDI2LzExLzggMTQ6NTksIEppYXhpbmcgSHUg5YaZ6YGTOgo+IFRoZSB0d28gTlBVIGNv
cmVzIG9mIHRoZSBSSzM1NzYgc2hhcmUgdGhlIENCVUYgYW5kIHRoZSBEU1UsIHNvIFBEX05QVTAK
PiBhbmQgUERfTlBVMSBhbHNvIG5lZWQgdGhlIHRocmVlIGNsb2NrcyB0aGF0IFBEX05QVVRPUCBh
bHJlYWR5IGxpc3RzLgo+Cj4gQWxzbyBhZGQgYSBCSVUgcmVzZXQgdG8gZWFjaCBOUFUgcG93ZXIg
ZG9tYWluLiBUaGUgcG1kb21haW4gZHJpdmVyIGN5Y2xlcwo+IGl0IHdoZW4gdGhlIGRvbWFpbiBw
b3dlcnMgb24sIHNvIHRoZSBidXMgaW50ZXJmYWNlIHdvcmtzLgo+Cj4gU2lnbmVkLW9mZi1ieTog
SmlheGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dvby5jb20+Cj4gLS0tCj4gICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpIHwgMTIgKysrKysrKysrKy0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaQo+IGluZGV4IDc4Mjg3MzZiZjlhYy4uNTA4ZWQ0
OGI3YmVlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2
LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpCj4g
QEAgLTExNTksMTQgKzExNTksMjIgQEAgcG93ZXItZG9tYWluQFJLMzU3Nl9QRF9OUFVUT1Agewo+
ICAgCQkJCQkJcG93ZXItZG9tYWluQFJLMzU3Nl9QRF9OUFUwIHsKPiAgIAkJCQkJCQlyZWcgPSA8
UkszNTc2X1BEX05QVTA+Owo+ICAgCQkJCQkJCWNsb2NrcyA9IDwmY3J1IEhDTEtfUktOTl9ST09U
PiwKPiAtCQkJCQkJCQkgPCZjcnUgQUNMS19SS05OMD47Cj4gKwkJCQkJCQkJIDwmY3J1IEFDTEtf
UktOTjA+LAo+ICsJCQkJCQkJCSA8JmNydSBDTEtfUktOTl9EU1UwPiwKPiArCQkJCQkJCQkgPCZj
cnUgQUNMS19SS05OX0NCVUY+LAo+ICsJCQkJCQkJCSA8JmNydSBIQ0xLX1JLTk5fQ0JVRj47CiDC
oCAxLiBDTEtfUktOTl9EU1UwIGlzIHRoZSBwYXJlbnQgb2YgQUNMS19SS05OMC8xIChzZWUgY2xr
LXJrMzU3Ni5jKS4KIMKgIFRoZSBjb21tb24gY2xvY2sgZnJhbWV3b3JrIGVuYWJsZXMgYSBjbG9j
aydzIHBhcmVudHMKIMKgIGF1dG9tYXRpY2FsbHksIHNvIERTVTAgaXMgYWxyZWFkeSBoZWxkIGR1
cmluZyB0aGUgc3dpdGNoIHdpbmRvdwogwqAgdGhyb3VnaCB0aGUgQUNMS19SS05OMC8xIGVudHJp
ZXMgdGhlIG5vZGVzIGFscmVhZHkgbGlzdDsgYWRkaW5nCiDCoCBpdCBleHBsaWNpdGx5IGlzIHJl
ZHVuZGFudC4KCiDCoCAyLiBQZXIgdGhlIGRlc2lnbiwgYSBwb3dlciBkb21haW4gc3dpdGNoIG9u
bHkgcGVyZm9ybXMgdGhlIGlkbGUKIMKgIHJlcXVlc3QgaGFuZHNoYWtlIGFuZCB0aGUgUW9TIHNh
dmUvcmVzdG9yZSBhY2Nlc3NlcywgYW5kIHRob3NlCiDCoCBwYXRocyBvbmx5IHJlcXVpcmUgQUNM
S19SS05OMC8xIGFuZCBIQ0xLX1JLTk5fUk9PVCAtIGV4YWN0bHkgd2hhdAogwqAgdGhlIG5vZGVz
IGFscmVhZHkgbGlzdC4gVGhlIENCVUYgY2xvY2tzIGFyZSBub3Qgb24gdGhlIHN3aXRjaAogwqAg
ZmxvdydzIGFjY2VzcyBwYXRoLCBhbmQgdGhlIGNsa191bmdhdGVfbWFzayBzdXBwb3J0IGluIHRo
ZSBkcml2ZXIKIMKgICgweDFhLzB4MWMgb24gUE1VX0NSVV9HQVRFRElTX0NPTjAgZm9yIG5wdTAv
bnB1MSkga2VlcHMgdGhlIHNoYXJlZAogwqAgcGF0aHMgYWxpdmUgZHVyaW5nIHRoZSBzd2l0Y2gg
d2luZG93IGFueXdheSAtIHRoYXQgaXMgd2hhdCB0aGUKIMKgIGdfbWFzayBzdXBwb3J0IHdhcyBh
ZGRlZCBmb3IuCj4gKwkJCQkJCQlyZXNldHMgPSA8JmNydSBTUlNUX0FfUktOTjBfQklVPjsKPiAg
IAkJCQkJCQlwbV9xb3MgPSA8JnFvc19ucHVfbTA+Owo+ICAgCQkJCQkJCSNwb3dlci1kb21haW4t
Y2VsbHMgPSA8MD47Cj4gICAJCQkJCQl9Owo+ICAgCQkJCQkJcG93ZXItZG9tYWluQFJLMzU3Nl9Q
RF9OUFUxIHsKPiAgIAkJCQkJCQlyZWcgPSA8UkszNTc2X1BEX05QVTE+Owo+ICAgCQkJCQkJCWNs
b2NrcyA9IDwmY3J1IEhDTEtfUktOTl9ST09UPiwKPiAtCQkJCQkJCQkgPCZjcnUgQUNMS19SS05O
MT47Cj4gKwkJCQkJCQkJIDwmY3J1IEFDTEtfUktOTjE+LAo+ICsJCQkJCQkJCSA8JmNydSBDTEtf
UktOTl9EU1UwPiwKPiArCQkJCQkJCQkgPCZjcnUgQUNMS19SS05OX0NCVUY+LAo+ICsJCQkJCQkJ
CSA8JmNydSBIQ0xLX1JLTk5fQ0JVRj47Cj4gKwkJCQkJCQlyZXNldHMgPSA8JmNydSBTUlNUX0Ff
UktOTjFfQklVPjsKPiAgIAkJCQkJCQlwbV9xb3MgPSA8JnFvc19ucHVfbTE+Owo+ICAgCQkJCQkJ
CSNwb3dlci1kb21haW4tY2VsbHMgPSA8MD47Cj4gICAJCQkJCQl9OwoKLS0gCkJlc3QgcmVnYXJk
cywKCuW6leWxguW5s+WPsOS4reW/gyDogpbplIvvvIhGaW5sZXkgWGlhb++8iQoqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioK55Ge6Iqv5b6u55S15a2Q6IKh5Lu95pyJ6ZmQ5YWs5Y+4ClJvY2tj
aGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkLgrnpo/lu7rnnIHnpo/lt57luILpk5znm5jot6/ova/k
u7blpKfpgZM4OeWPt+i9r+S7tuWbrUHljLoyMeWPt+alvCAzNTAwMDMKTm8uMjEgQnVpbGRpbmcs
IEEgRGlzdHJpY3QsIEZ1emhvdSBTb2Z0d2FyZSBQYXJrLCBGdXpob3UsIEZ1amlhbiAzNTAwMDMs
IFAuUi4gQ2hpbmEKVGVsOiAwNTkxLTgzOTkxOTA2LTg2MDIgTW9iaWxlOiAxODUwNjA1NzYwMwoq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
