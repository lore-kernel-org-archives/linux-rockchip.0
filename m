Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 159E7C4727E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 21:56:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B88C0206FC
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 21:56:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Mx44YUT7";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="smLOvcFF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B88C0206FC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=07QV084ZabH2Ozp70Yd91MaCpPmrMrDQkZB7UpF6Gg4=; b=Mx44YUT7NIsFFDqvAgthnVXmK
	lBY0PF8O5c/Pa72w0GCY0qnX2uovOi1EUPjWPxPyA8xyVb30LM4Plb2xL6PqXwKbvHYMjhjRthvvS
	QiCaViUnFQ75No8uxB02DrOYXJDmhMHGIVKTcRdlX5MEdXZ13gY6yUIvaKTC7f6R3LhwkmaHD9u7o
	qVMLMhoAp2jW391o0DikMfoPgZHdaPew+xsEburWlR3BSxWDnqmyOMtwftUnbXudBIO/qpyqhCkrJ
	zzewFtyitoe+eqXH5Zli5yfLA18o4Nm8sbirT8o5NQWET3cLSe5fz23W8BL/On/Z9av8dBiyD01BN
	Uw+ajuPDQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLvh6-0007I8-2T; Fri, 25 Sep 2020 21:55:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLvgm-0007CA-7R; Fri, 25 Sep 2020 21:55:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id a22so3613049ljp.13;
 Fri, 25 Sep 2020 14:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IqWRtJXL3h+0YNOWDfr/oyE5XU2E5SGs9B5R12b/mYU=;
 b=smLOvcFFfth/d/eCeWfi6sPNLPRxKuTHjZl6Qa78IJFY39bb2+0XlYQLC/pEPb0S5f
 krWWfpXYbxD08VHxrcxWjPchRtbLuzebmEukSrshxr4xU4tX1dR3f82OTovIcu62v4qP
 g20pfMDZ8diisUnm+1Se1IT4VvLZ2kruNSpscC6of4431D4LgyhrDdtXJZYCE10wtpdt
 gxO0psNfOrRHtRtDqjM8ju1BdpYSQbTemoNMxpKvwnAofmyb1mB3SQUq2a4pcitvlfIv
 b+hARjlJum+osgCVbXdK/+NORGUg++RWT54fIlmgTwTdM1sxpO02quE75L1NTKySgjPZ
 KjOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=IqWRtJXL3h+0YNOWDfr/oyE5XU2E5SGs9B5R12b/mYU=;
 b=o4YYX4aAAh6EUp/aF0tsz6wD92ZDaqKh6v0oajp3Xm+MsK6Kz15JJXlfZRGGCKtP+h
 4teQGOgKwQmaqKOm3gWYZUHbPCVTdy9p718cctWnzBkjVTTIpHvHjgknvfDatUW6bI9J
 hvBM/P8k9CN1t3Qlig9mzmPhQMy7i9rwPgkQf44OoXK9OKqWHR/6bBtY9iZPe/BE33ld
 3/mjSpv7r87ntCn/m0n1/YIQogR3Z/dt937ja9KJyf1xEzrHPl+NJMHMvn9A8wCnPp/5
 spWeVxRj70L1AXH0xT4bnesGOKpTzQi1fkAI43LrO2DYDHOL6QQ0HozeOL4UALjBtZCe
 DUxg==
X-Gm-Message-State: AOAM531cbTSoy7rkmSICeT40SK6Q24XAoe6v5L8x6TncK70hp5fQiOiI
 hCwvyGe/wYjC0nWNotPgkT8=
X-Google-Smtp-Source: ABdhPJwmQGAytj+dmXke/hXv+JGQ4Kg6h02qEjK+GXB10/h+Q3MdC1ggeZKjWovNpDVBdcczonRk5w==
X-Received: by 2002:a2e:90d6:: with SMTP id o22mr1769262ljg.442.1601070935198; 
 Fri, 25 Sep 2020 14:55:35 -0700 (PDT)
Received: from saturn.localdomain ([2a00:fd00:805f:db00:3926:b59a:e618:9f9c])
 by smtp.gmail.com with ESMTPSA id
 j8sm261277lfr.80.2020.09.25.14.55.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 14:55:34 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Heiko Stuebner <heiko@sntech.de>,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v1 2/2] drm/rockchip: fix warning from cdn_dp_resume
Date: Fri, 25 Sep 2020 23:55:24 +0200
Message-Id: <20200925215524.2899527-3-sam@ravnborg.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200925215524.2899527-1-sam@ravnborg.org>
References: <20200925215524.2899527-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_175536_309931_0F2AE15F 
X-CRM114-Status: GOOD (  15.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Sandy Huang <hjc@rock-chips.com>, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Q29tbWl0IDdjNDlhYmI0YzJmOCAoImRybS9yb2NrY2hpcDogY2RuLWRwLWNvcmU6IE1ha2UgY2Ru
X2RwX2NvcmVfc3VzcGVuZC9yZXN1bWUgc3RhdGljIikKaW50cm9kdWNlZCB0aGUgZm9sbG93aW5n
IHdhcm5pbmcgaW4gc29tZSBidWlsZHM6CgpjZG4tZHAtY29yZS5jOjExMjQ6MTI6IHdhcm5pbmc6
IOKAmGNkbl9kcF9yZXN1bWXigJkgZGVmaW5lZCBidXQgbm90IHVzZWQKIDExMjQgfCBzdGF0aWMg
aW50IGNkbl9kcF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQogICAgICB8ICAgICAgICAgICAg
Xn5+fn5+fn5+fn5+fgoKRml4IHRoaXMgYnkgZGVmaW5pbmcgY2RuX2RwX3Jlc3VtZSBfX21heWJl
X3VudXNlZAoKU2lnbmVkLW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpG
aXhlczogN2M0OWFiYjRjMmY4ICgiZHJtL3JvY2tjaGlwOiBjZG4tZHAtY29yZTogTWFrZSBjZG5f
ZHBfY29yZV9zdXNwZW5kL3Jlc3VtZSBzdGF0aWMiKQpDYzogRW5yaWMgQmFsbGV0Ym8gaSBTZXJy
YSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlr
b0BzbnRlY2guZGU+CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS44KwotLS0K
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvY2RuLWRwLWNvcmUuYwppbmRleCBhNGE0NWRhZjkzZjIuLjExNjJlMzIxYWFlZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKQEAgLTExMjEsNyArMTEyMSw3IEBAIHN0
YXRpYyBpbnQgY2RuX2RwX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogCXJldHVybiByZXQ7
CiB9CiAKLXN0YXRpYyBpbnQgY2RuX2RwX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCitzdGF0
aWMgaW50IF9fbWF5YmVfdW51c2VkIGNkbl9kcF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQog
ewogCXN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwogCi0t
IAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
