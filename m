Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE371606A31B
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 22:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QMydsxz4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=gbeLFUJU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hlJ+SB1h1TDFI8N3UnAkgimMklTYa8dTl8z563up1zs=; b=QMydsxz4mIPAt98TXl50kj40sM
	AG3fv34dTuKdsCRN+PmwkzqYFdQ2V3IaLdcAK0vKZ4jAeYBFEhBeht9oKUPSEwFGUfM2BfDtvfB2A
	ArZTLL+bowOJGsczarJXAW8OHmb0PhGqaeeTBMBV6ZGel1jIXEXkhTiQMb+hNLGtjSwk4crW7xGQc
	j77zbfiyKfVrT6CvLR9K4WCeUW1OKVpmwUgyltiw2vcdyt495XUhq1JBqdS/50zv/wUL+jKR0HAIR
	xcBNFDOWWVTAsfbkHCqAi+ktltq12RK/fJnKNWNjg0UrTvHWW4O47f92k5ePrBw02i3U6+VRFWQB6
	pWSELz+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xONGZ-00000003t9F-29DY;
	Tue, 03 Nov 2026 22:46:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xONGW-00000003t8j-2sdj;
	Tue, 03 Nov 2026 22:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=NnJsKtCTeD/Bzs882oxMSZxOAfNjNWrgvAYK1w0KvpE=; b=gbeLFUJUs+ZWxMstd2CPZDNWCJ
	oEGwJz+eQinsoD8PgZ6HLv/YVXCRvnPBhA4Ww09HNNMGR8WL673bexx07d/W3ve1Ah4rdE70367T9
	ib3wl7UXqSYXRNjkkyk9XcaK0PWB7xz1cEIYWdHhRF/1mArXTlyg8mOL0Mfk2p6T0DYAwfrvSjzth
	7BmORiJf0icp2wMCCbv9zzVUGd+9W/QSwNR8jdlMaVyeBynCgDSRmUroyqnNbFAgiw0j4m8kRbfBW
	8XT6UxDlm1gmfj2ynLX1HCI1d+gah7Yt/it3CKT28RI8Fqk+afe3ABDn1leZnfRiCSSkctZWI+RhV
	Ri6bN5UQ==;
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
Subject: Re: [PATCH v15 02/15] accel/rocket: take the completion register writes under
 job_lock
Date: Tue, 03 Nov 2026 23:45:30 +0100
Message-ID: <3317717.zE8UqtGg2D@diego>
In-Reply-To: <20261101082307.151957-3-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-3-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_144604_883020_FC6DF49D 
X-CRM114-Status: UNSURE (   6.48  )
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

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjI6NTQgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IHJvY2tldF9qb2JfaGFuZGxlX2lycSgp
IHdyaXRlcyBPUEVSQVRJT05fRU5BQkxFIGFuZCBJTlRFUlJVUFRfQ0xFQVIgYmVmb3JlCj4gdGFr
aW5nIGpvYl9sb2NrLCB3aGlsZSByb2NrZXRfam9iX2h3X3N1Ym1pdCgpIHdyaXRlcyBPUEVSQVRJ
T05fRU5BQkxFIHVuZGVyCj4gaXQsIHNvIGEgY29tcGxldGlvbiBjYW4gd3JpdGUgaXRzIHplcm8g
YWZ0ZXIgYSBzdWJtaXQgaGFzIHdyaXR0ZW4gaXRzIG9uZQo+IGFuZCBzdG9wIGEgdGFzayB0aGF0
IGhhcyBqdXN0IHN0YXJ0ZWQuIE1vdmUgYm90aCB3cml0ZXMgaW5zaWRlIHRoZSBleGlzdGluZwo+
IHNjb3BlZF9ndWFyZCgpLgo+IAo+IEZpeGVzOiAwODEwZDVhZDg4YTEgKCJhY2NlbC9yb2NrZXQ6
IEFkZCBqb2Igc3VibWlzc2lvbiBJT0NUTCIpCj4gU2lnbmVkLW9mZi1ieTogSmlheGluZyBIdSA8
Z2FoaW5nQGdhaGluZ3dvby5jb20+Cj4gVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5l
dDAyNkBnbWFpbC5jb20+ICMgUkszNTg4LCB0aHJlZSBjb3JlcywgaW5kdWNlZCByZXNldCwgSk9C
X1RJTUVPVVRfTVM9MgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
