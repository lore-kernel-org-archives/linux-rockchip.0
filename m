Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279BC606A33D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 22:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V6LSO8/1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=1cUgVVtf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BlE+eNpdGI0sBtZL/NGrseSpstRhSXnHMyHqULa30sU=; b=V6LSO8/1s+OeLKbTljnS7DTdzJ
	dc2gfbVeh8oFJYWbU9zAc3ImU8FB6wTAqOOlBUC4MpmpLjomI2iwMCUCdKGkJSiskBCfYGTdzeWcx
	spIE6BUmDDi+/+Klldzm7q92QEZNstgC+jn9z3nOIpCLRd6bCsFlyuFCcZ8hljngjCz7rgeLnpel0
	kCiWhMrwlqZSaD/3ej4SxOUhA7oyWUVbvaAHvceMz77HK2+UNm6QndM7T7TXGabpIvctSYT0NsAIe
	dn0HwtKRuTee8O5161VKa4KPfeD4QxgsZHldhZ/hHWpw2c7L2NVXGTRS/VBHoHxv6xRyJow5DRRL7
	G+38THww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xON83-00000003rkh-387u;
	Tue, 03 Nov 2026 22:37:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xON81-00000003rkJ-0uhj;
	Tue, 03 Nov 2026 22:37:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xsK4w3jLbP3XPnppugEgOy/hVuJlXHxWXgSfS8UpOYQ=; b=1cUgVVtfjLR8OTj9loqDdJcnxM
	4NUPW4VgzqHCdc5C+ue3DYNVoZBzBLZWHJuAHQHcQtvNh5vcTI9Z2pCCMdpjIx66hpAiQWW+iRDzL
	F1eD+vZJZSsRqCURVFCc5rPOgrRzhNlrvyxjJB0tsMUeUGiehjeiHHk+DJ8oXrVp/ol+VF44yvkEB
	x1xDE2rQn/Sb6eOQdMpgVKWuDhTqz1I6qrSz9RqpJDgXl3XDc6eIfqndVxF88WgTQRolhu6e7HvVH
	2OKj3NgFNzHpVG1L+1DUVVpELXsirdhAdiZdsjStcx1DHsbBO2FVWcU+FvQagEV3Fl4JAR76iDGWn
	uFEGY8mA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 jeff.hugo@oss.qualcomm.com, rfoss@kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH v15 10/15] pmdomain: rockchip: cycle an optional power-domain
 reset on power-on
Date: Tue, 03 Nov 2026 23:36:51 +0100
Message-ID: <2685454.vzjCzTo3RI@diego>
In-Reply-To: <20261101082307.151957-11-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-11-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_143717_273356_9F374DB3 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjM6MDIgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IFNvbWUgUm9ja2NoaXAgZG9tYWlucyBj
b21lIG91dCBvZiBwb3dlci1vbiB3aXRoIHRoZWlyIGJ1cyBpbnRlcmZhY2UgaW4gYW4KPiB1bmRl
ZmluZWQgc3RhdGUuIE9uIHRoZSBSSzM1NzYgTlBVIHRoaXMgc2hvd3MgdXAgYXMgYSBoYW5nIG9u
IHRoZSBmaXJzdAo+IHJlZ2lzdGVyIGFjY2VzcyBhZnRlciB0aGUgZG9tYWluIGlzIHN3aXRjaGVk
IG9uLCBhbmQgcHVsc2luZyB0aGUgZG9tYWluJ3MKPiByZXNldCBhdCB0aGlzIHBvaW50IGNsZWFy
cyBpdC4KPiAKPiBUYWtlIHRoZSBkb21haW4gbm9kZSdzIHJlc2V0IGlmIGl0IGhhcyBvbmUsIGFu
ZCBwdWxzZSBpdCBiZXR3ZWVuCj4gcmVsZWFzaW5nIGlkbGUgYW5kIHJlc3RvcmluZyBRb1MuIFRo
ZSByZXNldCBpcyBvcHRpb25hbCwgc28gZG9tYWlucyB0aGF0Cj4gZG8gbm90IGxpc3Qgb25lIGFy
ZSB1bmFmZmVjdGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEppYXhpbmcgSHUgPGdhaGluZ0BnYWhp
bmd3b28uY29tPgo+IFJldmlld2VkLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBvc3MucXVhbGNv
bW0uY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
