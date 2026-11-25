Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F21606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 03:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0cW8WiTE;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=Ph+hLG/U
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JBTGl4n+oddXDEnAz7UMjLrcf0pYIsgvE4OoivM7Bdc=; b=0cW8WiTE5ReilL8bKT62BCoLlp
	NAcpGrUvpojr247uRRb7QZaKGIHapQelos46Y5sMLiGfPbfFAXkyJ/rg8VRftGcoKIYsEYr1e6kSP
	HMomkYh+EOQYUKWbpy4FgufgODnRB5y4eorTLVmOOc23eMpNNI8uZkmdIsqW3G/OjX/Xxq/eJxH4Y
	wYQKoM/9eRaf4R2njDVuM+cvVCOcz2OO0oiE/OZH0I36YjT9sONjWeRt/iQxRmfMuv+7RSrVgzR3C
	A+BVxB/3QMdybKl9llLRpAunO3cbhdeB3XcYfBw0zSl28H2mUXHoyzymChXFUaZJxW6GX8hSQFFyr
	zf8PVpjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW46t-00000008MF3-1i5H;
	Wed, 25 Nov 2026 03:55:55 +0000
Received: from mail-m158245.netease.com ([47.251.158.245])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW46n-00000008MEQ-2QuZ;
	Wed, 25 Nov 2026 03:55:53 +0000
Received: from [172.16.12.74] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 55e7c8e52;
	Wed, 25 Nov 2026 11:55:34 +0800 (GMT+08:00)
Message-ID: <68d54499-044c-45af-abbb-9aa7bc212db5@rock-chips.com>
Date: Wed, 25 Nov 2026 11:55:34 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/6] dt-bindings: pwm: Add a new binding for
 rockchip,rk3576-pwm
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>,
 William Breathitt Gray <wbg@kernel.org>, kernel@collabora.com,
 Jonas Karlman <jonas@kwiboo.se>, Alexey Charkov <alchark@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>,
 "chaoyi.chen" <chaoyi.chen@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>
References: <20260420-rk3576-pwm-v5-0-ae7cfbbe5427@collabora.com>
 <20260420-rk3576-pwm-v5-1-ae7cfbbe5427@collabora.com>
 <alCvmLX1ke0qjh99@monoceros>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <alCvmLX1ke0qjh99@monoceros>
X-HM-Tid: 0aa210d8360203a8kunm11819cac735762
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQh1MHlZLSh9KQh1DHU
	9JTk5WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Ph+hLG/U/ehuFm1xORwAyVx8Z1h6dMUvRnaVJgrJQMVC1NWYy35lbIWmv5ub87pk4Xpwltj0cIRfK5iIWecdEokKUXIWS1h21FPK1MIlOBLf2n0Hz8Hso6BG8hOGyBIbwU+5Xefao0dS8yLtSFthl5iNKmq2pQN8EdSpwUOhYs8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vBiVRAr+5XLhivQmL9zYbZRsjiirfBfGSpOjwM03dXk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_195551_530329_7CA76183 
X-CRM114-Status: GOOD (  17.90  )
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

SGVsbG8gYWxsLAoKT24gNy8xMC8yMDI2IDY6MzEgUE0sIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3Rl
Ogo+IEhlbGxvLAo+IAo+IE9uIE1vbiwgQXByIDIwLCAyMDI2IGF0IDAzOjUyOjM4UE0gKzAyMDAs
IE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPj4gVGhlIFJvY2tjaGlwIFJLMzU3NiBTb0MgaGFz
IGEgbmV3ZXIgUFdNIGNvbnRyb2xsZXIgSVAgcmV2aXNpb24gdGhhbgo+PiBwcmV2aW91cyBSb2Nr
Y2hpcCBTb0NzLiBUaGlzIElQLCBjYWxsZWQgIlBXTXY0IiBieSBSb2NrY2hpcCwgaW50cm9kdWNl
cwo+PiBzZXZlcmFsIG5ldyBmZWF0dXJlcywgYW5kIGNvbnNlcXVlbnRseSBkaWZmZXJzIGluIGl0
cyBiaW5kaW5ncy4KPj4KPj4gSW5zdGVhZCBvZiBleHBhbmRpbmcgdGhlIGV2ZXItZ3Jvd2luZyBy
b2NrY2hpcC1wd20gYmluZGluZyB0aGF0IGFscmVhZHkKPj4gaGFzIGFuIGlmLWNvbmRpdGlvbiwg
YWRkIGFuIGVudGlyZWx5IG5ldyBiaW5kaW5nIHRvIGhhbmRsZSB0aGlzLgo+Pgo+PiBUaGVyZSBh
cmUgdHdvIGFkZGl0aW9uYWwgY2xvY2tzLCAib3NjIiBhbmQgInJjIi4gVGhlc2UgYXJlIGF2YWls
YWJsZSBmb3IKPj4gZXZlcnkgUFdNIGluc3RhbmNlLCBhbmQgdGhlIFBXTSBoYXJkd2FyZSBjYW4g
c3dpdGNoIGJldHdlZW4gdGhlICJwd20iLAo+PiAib3NjIiBhbmQgInJjIiBjbG9jayBhdCBydW50
aW1lLgo+Pgo+PiBUaGUgUFdNIGNvbnRyb2xsZXIgYWxzbyBjb21lcyB3aXRoIGFuIGludGVycnVw
dCBub3cuIFRoaXMgaW50ZXJydXB0IGlzCj4+IHVzZWQgdG8gc2lnbmFsIHZhcmlvdXMgY29uZGl0
aW9ucy4KPj4KPj4gUmV2aWV3ZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1pY3Jv
Y2hpcC5jb20+Cj4+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwu
b3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRh
cm9saUBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gICAuLi4vYmluZGluZ3MvcHdtL3JvY2tjaGlw
LHJrMzU3Ni1wd20ueWFtbCAgICAgICAgICB8IDc3ICsrKysrKysrKysrKysrKysrKysrKysKPj4g
ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA3
ICsrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA4NCBpbnNlcnRpb25zKCspCj4+CgpXaXRoIE5pY29s
YXMnIGFncmVlbWVudCwgSSdtIHBsYW5uaW5nIHRvIHRha2Ugb3ZlciB0aGUgUkszNTc2IFBXTSB2
NApzdXBwb3J0IHdvcmsgYW5kIHRvIHJlc3RydWN0dXJlIHRoZSBkcml2ZXIgdG8gYSBjZXJ0YWlu
IGV4dGVudC4KClRoZSBSSzM1NzYgUFdNIHY0IHJldmlzaW9uIGFjdHVhbGx5IHByb3ZpZGVzIGEg
bGFyZ2UgbnVtYmVyIG9mCmZlYXR1cmVzLCBzdWNoIGFzIGNvdW50ZXIsIGZyZXF1ZW5jeSBtZXRl
ciwgYmlwaGFzaWMgKEFCKSBjb3VudGVyLCBJUgp0cmFuc21pdHRlciBhbmQgSVIgcmVjZWl2ZXIu
IEFsbCBvZiB0aGVzZSBmZWF0dXJlcyBzaGFyZSB0aGUgc2FtZQpwaHlzaWNhbCBhZGRyZXNzIHJh
bmdlLiBGZWF0dXJlcyB0aGF0IGFwcGVhciB1bnJlbGF0ZWQgdG8gIlBXTSIgaGF2ZQpiZWVuIGZv
bGRlZCBpbnRvIGEgc2luZ2xlIFBXTSBibG9jayAoZHVlIHRvIHNvbWUgdW5hdm9pZGFibGUKY29u
c3RyYWludHMpLiBJbiBhIGZ1dHVyZSB2NSByZXZpc2lvbiB0aGVzZSBmZWF0dXJlcyB3aWxsIGJl
IHNwbGl0CmludG8gc2VwYXJhdGUgYmxvY2tzLCBlYWNoIHdpdGggaXRzIG93biBwaHlzaWNhbCBh
ZGRyZXNzIHJhbmdlLiBUaGlzCmlzIHRoZSBtYWluIHJlYXNvbiBJIHdvdWxkIGxpa2UgdG8gcmVz
dHJ1Y3R1cmUgdGhlIGRyaXZlciBsYXlvdXQgbm93OgphbiBNRkQgYmFzZWQgdjQgZHJpdmVyIHdv
dWxkIGhhdmUgdG8gYmUgcmV3b3JrZWQgaW50byBhIG5vbi1NRkQgb25lCmZvciB2NSBhbnl3YXks
IHdoaWNoIHdvdWxkIGxlYXZlIHVzIHdpdGggdHdvIGRyaXZlcnMgZHVwbGljYXRpbmcgdGhlCnNh
bWUgbG9naWMuCgpOaWNvbGFzJyBNRkQgdmVyc2lvbiBpcyBhbiBleGNlbGxlbnQgaW1wbGVtZW50
YXRpb24gZm9yIHJ1bnRpbWUKZmVhdHVyZSBzd2l0Y2hpbmcsIGJ1dCBieSBkZXNpZ24gaW50ZW50
IHdlIHByZWZlciB0aGUgZnVuY3Rpb24gdG8gYmUKZml4ZWQgYXQgaGFyZHdhcmUgZGVzaWduIHRp
bWUsIGkuZS4gYSBzdGF0aWMgc2VsZWN0aW9uIGluc3RlYWQuIEkgaGF2ZQpmb3VuZCB0d28gc2lt
aWxhciBleGlzdGluZyBpbXBsZW1lbnRhdGlvbnM6CgoxLiBUSSdzIGVDQVAgbW9kdWxlIHN3aXRj
aGVzIGJldHdlZW4gZnVuY3Rpb25zIGJ5IG92ZXJyaWRpbmcgdGhlCiAgICBjb21wYXRpYmxlOgoK
ICAgIGRyaXZlcnMvY291bnRlci90aS1lY2FwLWNhcHR1cmUuYwogICAgZHJpdmVycy9wd20vcHdt
LXRpZWNhcC5jCiAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY291bnRlci90
aSxhbTYyLWVjYXAtY2FwdHVyZS55YW1sCiAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcHdtL3B3bS10aWVjYXAueWFtbAoKMi4gU2Ftc3VuZydzIFVTSSBtb2R1bGUsIHdoaWNo
IFNhc2NoYSBwb2ludGVkIG1lIHRvLCB1c2VzIGEgdG9wLWxldmVsCiAgICBub2RlIG1hdGNoaW5n
IHRoZSBVU0kgZHJpdmVyIHdpdGggb25lIGNoaWxkIG5vZGUgcGVyIGZ1bmN0aW9uCiAgICAoZGlz
YWJsZWQgYnkgZGVmYXVsdCkuIFRoZSBib2FyZCBkdHMgdGhlbiBvbmx5IGhhcyB0byBlbmFibGUg
dGhlCiAgICBjaGlsZCBub2RlIGl0IHdhbnRzIHRvIHVzZToKCiAgICBkcml2ZXJzL3NvYy9zYW1z
dW5nL2V4eW5vcy11c2kuYwogICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Nv
Yy9zYW1zdW5nL2V4eW5vcy11c2kueWFtbAoKSSB3b3VsZCB2ZXJ5IG11Y2ggYXBwcmVjaWF0ZSB5
b3VyIGZlZWRiYWNrIG9uIHRoaXMsIGFzIHlvdXIgb3BpbmlvbiBpcwprZXkgdG8gbWFraW5nIHN1
cmUgdGhpcyByZXN0cnVjdHVyZSBkb2VzIG5vdCBoZWFkIGluIHRoZSB3cm9uZwpkaXJlY3Rpb24u
CgpGb3IgcmVmZXJlbmNlLCB0aGUgcGxhbm5lZCB3b3JrIGlzOgoKMS4gU2V0dGxlIG9uIGEgc3Rh
dGljIERUUyBtZXRob2QgdG8gc2VsZWN0IHRoZSBQV00gdjQgZmVhdHVyZXMuCjIuIE1lcmdlIHRo
ZSBQV00gdjQgc3VwcG9ydCBpbnRvIHRoZSBleGlzdGluZyBwd20tcm9ja2NoaXAuYyBkcml2ZXIs
CiAgICBiYXNlZCBvbiBbdjUsMy82XSBwd206IEFkZCByb2NrY2hpcCBQV012NCBkcml2ZXIuIEZv
ciB2NCB0aGUKICAgIHdhdmVmb3JtIEFQSSBhbHJlYWR5IGFkYXB0ZWQgYnkgTmljb2xhcyB3aWxs
IGJlIHVzZWQgKG9sZGVyCiAgICByZXZpc2lvbnMgd2lsbCBiZSBtaWdyYXRlZCB0byB0aGUgd2F2
ZWZvcm0gQVBJIGluIHRoZSBmdXR1cmUpLgozLiBBZGQgYSBzZXBhcmF0ZSBjb3VudGVyIGRyaXZl
ciBmb3IgdGhlIFBXTSBjYXB0dXJlIGZ1bmN0aW9uLCBiYXNlZAogICAgb24gW3Y1LDQvNl0gY291
bnRlcjogQWRkIHJvY2tjaGlwLXB3bS1jYXB0dXJlIGRyaXZlci4KCi0tLS0gKHNlY29uZCBzdGFn
ZSkgLS0tLQoKNC4gQWRkIGEgcm9ja2NoaXAtY2ZkLmMgZHJpdmVyIGJhc2VkIG9uIHRoZSBHZW5l
cmljIENvdW50ZXIgZnJhbWV3b3JrLAogICAgc3VwcG9ydGluZyB0aGUgZnJlcXVlbmN5IG1ldGVy
IGFuZCB0aGUgY291bnRlci4KNS4gQWRkIGEgcm9ja2NoaXAtcGNkLmMgZHJpdmVyIGJhc2VkIG9u
IHRoZSBHZW5lcmljIENvdW50ZXIgZnJhbWV3b3JrLAogICAgc3VwcG9ydGluZyB0aGUgYmlwaGFz
aWMgKEFCKSBjb3VudGVyLgo2LiBBZGQgYSByb2NrY2hpcC1pci10eC5jIGRyaXZlciBiYXNlZCBv
biB0aGUgUkMgZnJhbWV3b3JrLCBzdXBwb3J0aW5nCiAgICBJUiBUWC4KNy4gQWRkIGEgcm9ja2No
aXAtaXItcnguYyBkcml2ZXIgYmFzZWQgb24gdGhlIFJDIGZyYW1ld29yaywgc3VwcG9ydGluZwog
ICAgSVIgUlguCgpCZXN0IHJlZ2FyZHMsCkRhbW9uCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
