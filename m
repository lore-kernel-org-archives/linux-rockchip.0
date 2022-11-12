Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FDC8C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 11:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MrCD14U/5c6HMwWrIZ1qjpKcYcwxXvAlWfjwGaT2rKY=; b=OfYuJuAWo3PLqS
	jvlqDVa4OwMnESA5xUr+bJHFMXW7JgJraQHxbAZGocDDBw9r7OgOE9SmVImdab8OhQaABP9HE7wQf
	PVYne80VNfRltRlJzivR2ive5wFI6ELgM7Fw3y5wdwCNfRLrQPuXB05VTs+5R92K1lawLAVC8V5vL
	liT9lu1AdqcYdqJBuYHOWRfc0DREPnSE0TiK5OAzTxbf2IQ17sk+MDPKWnl743CKHTt3R6hgvDFiZ
	7BfTPKd2AM5kbHaD936y5Du8fUbnEF7EWdE+g/LvAuB2R1KinNV3+wYhI6H/Z6EbeAiICq5nFszNm
	Lkudn2mK10o/3CgjGpog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ototw-005Mnj-Op; Sat, 12 Nov 2022 11:42:20 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ototi-005Mhk-CB
	for linux-rockchip@lists.infradead.org; Sat, 12 Nov 2022 11:42:09 +0000
Received: by mail-pl1-x634.google.com with SMTP id j12so6252757plj.5
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Nov 2022 03:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=omnom-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wUJur4eVPzA0iY2JL1ZbCoGq1dKojqTulWseoldi6uA=;
        b=WhOUwIfGsxKfkHoG7tRINJX7dicX7/Tvb4xl7lUAkj37SLilDOnia9YuXBHa54zqaT
         Vi14P7KPX0Kgm28u+a48bfS2LPxa3H5Yp/eSxv9HuHcRzLG2k2y9WsSmLANx1AXqnxpA
         wBT1AU2y+KuBKnzsUlz4zOskgBxsiUWT+QC37GvEhT/BI7sFkZBiaLspmWbJCN+dIpH/
         RTO9OPQUujoyMgXwbGlspCh8KtfNA43SbODn94XTlpindNd5mi5nRtmzv4CMD4qZq/s8
         q85FJIwyxQZ+oSJPJ76vNuvOlwRSYEnKfga8kA0PxT3ij7p/k//QAZHsmRclExCaKwBE
         8WcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wUJur4eVPzA0iY2JL1ZbCoGq1dKojqTulWseoldi6uA=;
        b=ho0zkaUDXtPXIsjpUcPu3kK893tckjoq4pgb7rjBEnRLTfeVBNYZyM600ACoxrulrh
         QSQYctZDraGRuBByz69763t7+MgIYXesyVO5wMyAmZ7egXx2cyLNEbpeMNHSPrCaBX5s
         Q+uiSldeFnEg1YHKH/b+gACvcoKs80iCtyxfqKMkjVTFeNZiI2FfsoOF4PqGHcJZZU0C
         gsdDgnryPKdr7mWU0WzazzTupWZdm9AT9ERi8qbhG/bnznFj2rn3ka4llkrQsEhkzN/m
         BFDwv+dzywoF2Rd6kAnlYOVBfbYT2wmIoKAUoaEQJCE/OIen9/NE6pVLtviMxdlYSpfa
         jtYQ==
X-Gm-Message-State: ANoB5pk+aPrjM84sc5LgmDNlViDUaLFk5VN/XFfKN46XKgmZ7IRah1Ri
	L+7qu6Z7eqEGBU984F2Ba9hWvXC76D/GTV1d89I=
X-Google-Smtp-Source: AA0mqf5cl6ADcjWvHGgt9BQptQBABfkSpoLRYCxk+AcKUl0ZOQmJHdAjXaha43C6ssnesABN2xaTRw==
X-Received: by 2002:a17:902:f7d1:b0:17f:8544:e0dd with SMTP id h17-20020a170902f7d100b0017f8544e0ddmr6543348plw.34.1668253322831;
        Sat, 12 Nov 2022 03:42:02 -0800 (PST)
Received: from astraea-lnx.home.neggl.es (119-18-16-128.771210.mel.static.aussiebb.net. [119.18.16.128])
        by smtp.gmail.com with ESMTPSA id e2-20020aa79802000000b0056e8ce106d1sm3132091pfl.132.2022.11.12.03.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 03:42:02 -0800 (PST)
From: Andrew Powers-Holmes <aholmes@omnom.net>
To: linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Robin Murphy <robin.murphy@arm.com>,
	Mark Kettenis <mark.kettenis@xs4all.nl>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/1] arm64: dts: rockchip: rk356x: Fix PCIe register and range mappings
Date: Sat, 12 Nov 2022 22:41:25 +1100
Message-Id: <20221112114125.1637543-1-aholmes@omnom.net>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_034206_452529_80C5FF3A 
X-CRM114-Status: GOOD (  13.41  )
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

VGhlIFJvY2tjaGlwIFJLMzU2eCBTb0NzIGN1cnJlbnRseSBoYXZlIGluY29ycmVjdCwgb3IgYXQg
bGVhc3Qgc3ViLW9wdGltYWwsYHJlZ2AKYW5kIGByYW5nZXNgIHZhbHVlcyBpbiB0aGVpciBEVFMg
ZmlsZXMnIFBDSWUgbm9kZXMuIE9uZMWZZWogSmlybWFuIHNlbnQgYSBwYXRjaAppbiBbMV0gdG8g
cmVzb2x2ZSB0aGlzLCBidXQgaXQgd2FzIG5vdCBtZXJnZWQgZHVlIHRvIHNvbWUgaXNzdWVzIGRp
c2NvdmVyZWQKZHVyaW5nIHRlc3RpbmcgKGl0IGZpeGVkIGhpcyBpc3N1ZXMgd2l0aCBkZXZpY2Vz
IGJlaGluZCBhIHN3aXRjaCwgYnV0IGJyb2tlCmRpcmVjdGx5IGNvbm5lY3RlZCBOVk1lIGRyaXZl
cywgYW1vbmdzdCBvdGhlcnMgLSBzZWUgWzJdKS4KClRoaXMgcGF0Y2ggaXMgYSByZXdvcmtlZCBv
ZiB0aGF0IHBhdGNoLCB1c2luZyB0aGUgc2FtZSBtYXBwaW5ncyB0aGUgUm9ja2NoaXAgQlNQCmtl
cm5lbCB1c2VzLiBQZXRlciBzZW50IHRoZXNlIHVwIGR1cmluZyB0aGUgZGlzY3Vzc2lvbiBpbiBb
M10gYW5kIHRoZXkndmUgYmVlbgp0ZXN0ZWQgb24gaGlzIGJvYXJkcyBhcyB3ZWxsIGFzIE9uZMWZ
ZWoncywgbWluZSwgYW5kIHRob3NlIG9mIGEgZmV3IG90aGVycy4KCk9uZMWZZWogYWxzbyBzZW50
IGEgcGF0Y2ggaW4gWzRdIHdpdGggdGhlc2UgZml4ZWQgcmFuZ2VzLCBidXQgd2l0aG91dCB0aGUg
Zml4CmZvciBSSzM1NjggYXMgaGUgd2FzIG5vdCBhYmxlIHRvIHRlc3Qgb24gdGhhdCBTb0MuIEkn
dmUgaW5jbHVkZWQgdGhlIGZpeGVzIGZvcgpib3RoIFNvQ3MgYXMgaGUncyBoYXBweSB3aXRoIHRo
YXQgYW5kIHRoZSBwYXRjaCBoYXMgbm90IHlldCBiZWVuIG1lcmdlZC4KCkkgaGF2ZSB0ZXN0ZWQg
dGhlc2UgcmFuZ2VzIGFnYWluc3QgZGV2aWNlcyB3aGljaCBvbmx5IG1hcCAzMi1iaXQgcmFuZ2Vz
LCBkZXZpY2VzCndoaWNoIG9ubHkgbWFwIDY0LWJpdCwgYW5kIGRldmljZXMgd2hpY2ggcmVxdWly
ZSBib3RoLiBBbiBJbnRlbCBpMzUwLVQ0IE5JQyBkb2VzCm5vdCBlbnVtZXJhdGUgYXQgYWxsIHdp
dGggdGhlIGV4aXN0aW5nIG9yIHByZXZpb3VzIHBhdGNoJ3MgYWRkcmVzc2VzLCBidXQgd29ya3MK
cXVpdGUgaGFwcGlseSB3aXRoIHRoZXNlLCBhcyBkbyBOVk1lIGRyaXZlcyBhbmQgZXZlcnkgb3Ro
ZXIgZGV2aWNlIEkndmUgYmVlbgphYmxlIHRvIHRlc3QuCgpNU0kvTVNJLVggaGFzIGFsc28gYmVl
biB0ZXN0ZWQgYXMgd29ya2luZywgYnV0IGRvZXMgbm90IGN1cnJlbnRseSB3b3JrIHVwc3RyZWFt
CmR1ZSB0byBhIHdvcmthcm91bmQgbmVlZGVkIGluIHRoZSBHSUMgZHJpdmVyIHdoaWNoIFJvY2tj
aGlwIGFyZSBzdGlsbCB5ZXQgdG8KaXNzdWUgYW4gZXJyYXR1bSBmb3IuCgpUaGFua3MsCkFuZHJl
dwoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjIxMDA1MDg1
NDM5Ljc0MDk5Mi0xLW1lZ2lAeGZmLmN6LwpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcm9ja2NoaXAvQ0FNZFl6WXEzUzJyUjNLYjYxaXJwVjl4SFlpak5pSlkwbWtWbkp3UHJwWHp4
Z19aaDlnQG1haWwuZ21haWwuY29tLwpbM10gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cm9ja2NoaXAvQ0FNZFl6WXA2U2hMcUt4ZGlBamFSRmlSRjVpK3d6ZktpUXZ3UE16eVFMQXV0V1pi
QXBnQG1haWwuZ21haWwuY29tLwpbNF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIx
MTA3MTMwMTU3LjE0MjU4ODItMS1tZWdpQHhmZi5jei8KCkFuZHJldyBQb3dlcnMtSG9sbWVzICgx
KToKICBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTZ4OiBGaXggUENJZSByZWdpc3RlciBhbmQg
cmFuZ2UgbWFwcGluZ3MKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNp
IHwgMTQgKysrKysrKystLS0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4
LmR0c2kgfCAgNyArKysrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pCgoKYmFzZS1jb21taXQ6IGYwYzRkOWZjOWNjOTQ2MjY1OTcyOGQxNjgzODcx
OTEzODdlOTAzY2MKLS0KMi4zOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
