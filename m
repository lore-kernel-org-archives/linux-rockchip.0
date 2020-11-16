Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23186C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 17:46:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4D99206B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 17:46:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="wRwK6Abi";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UH/wzcYn"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4D99206B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c3gdVKDfHVbMeRtoXiCUyJ6r2VE4oBNx5NOscyn0QKs=; b=wRwK6AbiwbdrdmTEVp+0Ol8D0
	Qt9uFsnNvjgxkuXykHUYSB52st5AoEAszhDDo1C+R06vLiB+/pyPlQc5mnAPShpvBgHYmBooUnjZ0
	CqfHT1Zi8kGxeCnWCof/h0N1fCM3JXRow14Ci563UR/5P0rG6iP/40K2kK8j/Eas4vM2Z4DbqVvti
	0/BL30RqgOqOpwfrtHTfOhbLui2nbxhhUdUnzWQUIMOTKjMXOh9hqGx71S8zHvcj6hxwzwbgDyHMW
	d3UZH5TKY4PKNPJBhcA1CZmUHkFt1OunU3SiewBVo4RfhOePS/zR0c+fWMWL+PLpJiah5QU2NA/lp
	8vmRgR5ow==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keia4-0006c8-KY; Mon, 16 Nov 2020 17:46:21 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keiVr-0004Fq-4n
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 17:42:13 +0000
Received: by mail-wm1-f68.google.com with SMTP id c9so35635wml.5
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2020 09:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+WLjHfl3orvIQYtFk8cWNm313KtEs9zxT+XRuqJ/3Ug=;
 b=UH/wzcYnQ6WNXlSacFEkhr/x34dgeTAKoOhIqiDcF2gN7ADQZlojGwVxCXvNJzJ42n
 mEQUdOT9UgO5o4h34H82pfTeRaIrEkywNTJgrSa/CdLTGZu//7j7iPIl+hayhj+5dDKJ
 O/VU/eKmM/U8XRLw8IM2Nzx1xzDE1NmeG3fuB6IN//4Vf9pEUsJfzqj89AxWNxMMdK4Q
 JfMfDxyvXpHlaBfEqDFP/hLaWM9pSDU+BzrUELdP8wKXEIwx7ZsCPR6IMvoZL8rmLtjT
 68FMnR0IcHE6U8XN/RPfrb3VeIOVUGFC/Al/ooOp2IcPJMYQEL79xQ0mesjsfcUZdRC3
 Wxvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+WLjHfl3orvIQYtFk8cWNm313KtEs9zxT+XRuqJ/3Ug=;
 b=cBUSRe3HJq0D3EBuFkKR2il0iHrkS1UTz2hCzi+1ZhB19aMYQfQtWIubFo0daJ639F
 uTOMy7GXCvP7dp5n9HNGiHzzXqYHF/eE689GEMOD7KPt0OL+fEQKM0hjFIqTJaPPNVUV
 zlqC+GFqpOSX2Q6Oth4BDxTcNyVMJ9dx8dPxDGxbBgJh28RLRq1TdEV9ikNLlz5BMJWK
 VT5oK2RHMPO97AcF2Dw2iaFlgCk9fxKcmpgKN1v+b9YyLJ6/l0I4Nj2UffonQRK+ov0+
 tKRvjK9wxbUYnUIHSvldUwjnGQY8dNq31+9O11SI5xQ8SGJzAds5CjcxomREFdJ0B6YN
 t+Kw==
X-Gm-Message-State: AOAM533rsjfwb0Zh3NDKLmvDL93krDbPCfRsmTSe1wUx1Wxovc2bxB6h
 sWt7VIlYM0GFv1+VFl6/Jhlq+A==
X-Google-Smtp-Source: ABdhPJzJ++oU+QXxqvf2YFvLPeBzaQUSNwRBGkprWJuB8Ho9MuTxldYpIomk2Fd55/9oIMXIYP7drg==
X-Received: by 2002:a1c:9ec9:: with SMTP id h192mr49655wme.8.1605548517471;
 Mon, 16 Nov 2020 09:41:57 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id n10sm24667224wrx.9.2020.11.16.09.41.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 09:41:56 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 26/42] drm/rockchip/rockchip_lvds: Fix struct document
 formatting
Date: Mon, 16 Nov 2020 17:40:56 +0000
Message-Id: <20201116174112.1833368-27-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116174112.1833368-1-lee.jones@linaro.org>
References: <20201116174112.1833368-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_124159_357866_280BF9CC 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, Mark Yao <mark.yao@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TXVzdCBzdGFydCB3aXRoICJzdHJ1Y3QgPG5hbWU+IgoKRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEg
a2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2x2ZHMuYzo0OTogd2FybmluZzogY2Fubm90IHVuZGVyc3RhbmQgZnVuY3Rpb24gcHJvdG90
eXBlOiAnc3RydWN0IHJvY2tjaGlwX2x2ZHNfc29jX2RhdGEgJwoKQ2M6IFNhbmR5IEh1YW5nIDxo
amNAcm9jay1jaGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+
CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+CkNjOiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+CkNj
OiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
U2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9sdmRzLmMKaW5kZXggZjI5MmM2YTZlMjBmYi4uODY1OGVmODJkOTM3YiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCkBAIC00Miw3ICs0Miw3IEBA
IHN0cnVjdCByb2NrY2hpcF9sdmRzOwogCQljb250YWluZXJfb2YoYywgc3RydWN0IHJvY2tjaGlw
X2x2ZHMsIGVuY29kZXIpCiAKIC8qKgotICogcm9ja2NoaXBfbHZkc19zb2NfZGF0YSAtIHJvY2tj
aGlwIGx2ZHMgU29jIHByaXZhdGUgZGF0YQorICogc3RydWN0IHJvY2tjaGlwX2x2ZHNfc29jX2Rh
dGEgLSByb2NrY2hpcCBsdmRzIFNvYyBwcml2YXRlIGRhdGEKICAqIEBwcm9iZTogTFZEUyBwbGF0
Zm9ybSBwcm9iZSBmdW5jdGlvbgogICogQGhlbHBlcl9mdW5jczogTFZEUyBjb25uZWN0b3IgaGVs
cGVyIGZ1bmN0aW9ucwogICovCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
