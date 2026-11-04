Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CB1606A329
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 11:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hRgMcKrJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=HprGKrTr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YddiNR0dtDruSPrDouBzsraet2MBrKmbxS3fc8BuP/0=; b=hRgMcKrJsLsOIKlBqyunB9r1tR
	G9/B29bHxXEGsrY97KNDA96OEOgYvkgPqdr6DLtkoPPyrGae4EiK5OtsFBBIvSvvtIJQ0F/7lIq71
	dbJgID2O9v9UnjaOaNsyvQju6lPblqeWJKy8WeoOKiaiNtWn47YaB56S6r4gpF491q901YsfbR20Z
	98rN/ZJsY78o9TSh6/rvRou89PF3pdXhzNbGx9eLjYQV23Hc1rSf5agYaSSkRWxbSriio7rakB7gz
	4+vTSD6L35rz21q7BXbVUtg7ls388a5m3yZHcVLFSlD57ZVoBMwNSwBBXp2Z9uMnTti1ltcJuF2FL
	EHCXiGhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYlI-000000055Pa-2cf0;
	Wed, 04 Nov 2026 11:02:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYlF-000000055Oq-2NwJ;
	Wed, 04 Nov 2026 11:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=D6EynbrAyE4kBCRtfAuXRbcm+KrJUZjKmPIkF+rnkGE=; b=HprGKrTrwC+A6mzuC5DOgjQHfS
	9qs/Upv6aoKHG/RC8l/fMPvz6uAI9m6ULjaFh0EJqly5ovt/0VvP5KYdJRBwMz0rk+pft8OZzS+92
	849Q7YRLbD4aNTLZ2CkjJrhujXha78Xa/8NaNc92aWMrJpPvzMccTJwnDxg/nlhP+kwRw5G1H9Z+A
	Y4M9jo7W49Tk66EBbJDF8kT2pr7PJiZm5MPdKfgTeiH6C3Eu4ZnhChxCo5tiuZ7kkGPfu1Jtv0c4I
	UpzG9FmCH0IyiUCX+ggLidwZAWo4lmOqV8jNDjPiI+y5VRvll40JKas30nrfAh0tiUYPPtgj6/v5A
	7zta+zuw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>,
 chaoyi.chen@rock-chips.com
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 jeff.hugo@oss.qualcomm.com, rfoss@kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v15 08/15] dt-bindings: iommu: rockchip: describe the RK3576 NPU
 MMU
Date: Wed, 04 Nov 2026 12:02:02 +0100
Message-ID: <15606397.O6BkTfRZtg@diego>
In-Reply-To: <20261101082307.151957-9-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-9-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_030233_674060_66C345CE 
X-CRM114-Status: GOOD (  12.27  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjM6MDAgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IFRoZSBSSzM1NzYgTlBVIE1NVXMgYXJl
IHJrMzU2OC1pb21tdSBjb21wYXRpYmxlIGJ1dCB0YWtlIGZpdmUgY2xvY2tzCj4gaW5zdGVhZCBv
ZiB0d28uIEdpdmUgdGhlbSB0aGVpciBvd24gY29tcGF0aWJsZSBhbmQgcGluIGJvdGggY2xvY2sg
Y291bnRzIGluCj4gYWxsT2YuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmlheGluZyBIdSA8Z2FoaW5n
QGdhaGluZ3dvby5jb20+Cj4gQWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1p
Y3JvY2hpcC5jb20+Cj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9pb21tdS9yb2NrY2hpcCxpb21tdS55
YW1sICAgICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI4
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2lvbW11L3JvY2tjaGlwLGlvbW11LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaW9tbXUvcm9ja2NoaXAsaW9tbXUueWFtbAo+IGluZGV4IDZjZTQxZDEx
ZmY1ZS4uODNkN2U3YzhlMGMyIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9pb21tdS9yb2NrY2hpcCxpb21tdS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lvbW11L3JvY2tjaGlwLGlvbW11LnlhbWwKPiBAQCAtMjYs
NiArMjYsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAtIGl0ZW1zOgo+ICAgICAgICAgICAgLSBl
bnVtOgo+ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTc2LWlvbW11Cj4gKyAgICAgICAg
ICAgICAgLSByb2NrY2hpcCxyazM1NzYtbnB1LWlvbW11Cj4gICAgICAgICAgICAgICAgLSByb2Nr
Y2hpcCxyazM1ODgtaW9tbXUKPiAgICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU2OC1p
b21tdQo+ICAKPiBAQCAtNDIsMTQgKzQzLDIyIEBAIHByb3BlcnRpZXM6Cj4gICAgICBtaW5JdGVt
czogMQo+ICAKPiAgICBjbG9ja3M6Cj4gKyAgICBtaW5JdGVtczogMgo+ICAgICAgaXRlbXM6Cj4g
ICAgICAgIC0gZGVzY3JpcHRpb246IENvcmUgY2xvY2sKPiAgICAgICAgLSBkZXNjcmlwdGlvbjog
SW50ZXJmYWNlIGNsb2NrCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IENvbXB1dGUgY2xvY2sKPiAr
ICAgICAgLSBkZXNjcmlwdGlvbjogQ29udm9sdXRpb24gYnVmZmVyIGNvcmUgY2xvY2sKPiArICAg
ICAgLSBkZXNjcmlwdGlvbjogQ29udm9sdXRpb24gYnVmZmVyIGludGVyZmFjZSBjbG9jawo+ICAK
PiAgICBjbG9jay1uYW1lczoKPiArICAgIG1pbkl0ZW1zOiAyCj4gICAgICBpdGVtczoKPiAgICAg
ICAgLSBjb25zdDogYWNsawo+ICAgICAgICAtIGNvbnN0OiBpZmFjZQo+ICsgICAgICAtIGNvbnN0
OiBucHUKPiArICAgICAgLSBjb25zdDogYWNsa19jYnVmCj4gKyAgICAgIC0gY29uc3Q6IGhjbGtf
Y2J1ZgoKSSdkIHJlYWxseSBsaWtlIG1vcmUganVzdGlmaWNhdGlvbiBpbiB0aGUgY29tbWl0IG1l
c3NhZ2UsIHdoeSB0aGVzZQphZGRpdGlvbmFsIGNsb2NrcyBhcmUgbmVlZGVkLgoKTm90IHNheWlu
ZyB0aGlzIGlzIHdyb25nLCBqdXN0IHNob3VsZCBnZXQgYSBiaXQgbW9yZSBleHBsYW5hdGlvbi4K
CgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
