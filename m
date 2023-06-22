Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71CE0EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 10:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfdj4n/3gYHqbjiQu00UwHNbAe/ryXXWfISY9i03V4Q=; b=a0+gnQjF5szibR
	pI+2vUX0SYrCYMP0e1SiDwKpakPxiPtsOMaA/DPBernxgWX27WmGXi20fEZOh7ixz2gmUY/yyzWPm
	NAo2hKaco6+oJyDhCQa/GUQ0bEP71Oqlx2HhyPONRenKYN5QMg5GUWgaL5alXdvcICA06fJC3b/Y1
	waZGRCSM7O4TXJsRN2HBd89ytfoJ70TF6VyzmNgRzwzWNLc1L79rJbGqAy5EOCaPgoI0UjTPhNTmU
	c5qK+m+JFX/RQonf3hnEHdFQ+RSJ9S/tvbwPBJFDxeOPIvRQEG2Gk2Isq9+cRozV0ohbXeMNtpyNw
	RrIKljxW0QXUHgbE4eKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCHNS-0008DH-0Z;
	Thu, 22 Jun 2023 10:17:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCHNP-0008Ck-15
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Jun 2023 10:17:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 63DD6617C7;
	Thu, 22 Jun 2023 10:17:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D45E1C433C8;
	Thu, 22 Jun 2023 10:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687429037;
	bh=McJw4yj+3Kf9jn1ZwGX0a9V4cQzBuo9RO+rqfuWeUZY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J2ZDseyurBPtJqc0nQ1uYwN70v9wASKytD4EvYBP+SUkfk9OUd/hkgTQ6MWDUu3Ti
	 BFErVIXG2tQy2IGa23ZPj3sPXX9dhs9XsX/yYjDCFsM+cHEawoODeMWkfwDXtWd46Y
	 TxLx1aZj1uiW+qW/hpjjbZqp2C3LNmIVNFr6npM3N/TftslXT/sKe3I5hyGFwCnBD6
	 aXogCvhF+VsA4XSIbvMTWyr5a7XuGxsBVo6XvfN5E+ieck1B4oWnQaKqDvequLozH6
	 E7r6HNAeJPc9E46B+4nbW0LoJtAVXmfpUTDFWAOg0iktmy1bx2JkK8+PpTv1la4/7u
	 +ezH1yRfqO0eQ==
From: rfoss@kernel.org
To: linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
Cc: Robert Foss <rfoss@kernel.org>,
	Archit Taneja <architt@codeaurora.org>,
	open list <linux-kernel@vger.kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	David Airlie <airlied@gmail.com>,
	"open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
	Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH v2] drm: bridge: dw-mipi-dsi: Fix enable/disable of DSI controller
Date: Thu, 22 Jun 2023 12:17:10 +0200
Message-Id: <168742902332.865433.11382317679096265094.b4-ty@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230617224915.1923630-1-megi@xff.cz>
References: <20230617224915.1923630-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_031719_435932_0252B185 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
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

RnJvbTogUm9iZXJ0IEZvc3MgPHJmb3NzQGtlcm5lbC5vcmc+CgpPbiBTdW4sIDE4IEp1biAyMDIz
IDAwOjQ4OjI1ICswMjAwLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiBGcm9tOiBPbmRyZWogSmly
bWFuIDxtZWdpQHhmZi5jej4KPiAKPiBCZWZvcmUgdGhpcyBwYXRjaCwgYm9vdGluZyB0byBMaW51
eCBWVCBhbmQgZG9pbmcgYSBzaW1wbGU6Cj4gCj4gICBlY2hvIDIgPiAvc3lzL2NsYXNzL2dyYXBo
aWNzL2ZiMC9ibGFuawo+ICAgZWNobyAwID4gL3N5cy9jbGFzcy9ncmFwaGljcy9mYjAvYmxhbmsK
PiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gZHJtOiBicmlkZ2U6IGR3LW1pcGkt
ZHNpOiBGaXggZW5hYmxlL2Rpc2FibGUgb2YgRFNJIGNvbnRyb2xsZXIKICAgICAgaHR0cHM6Ly9j
Z2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MvY29tbWl0Lz9pZD0wNWFhNjEzMzQ1OTIK
CgoKUm9iCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
