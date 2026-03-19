Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 922141075273
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 07:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lS3zWJND8tSuBdSUp3sGn92wZ6w66IzxCB2i16nElEo=; b=5CavQ0gyGEsTYt
	4KvZJqwn03Z7dCobS/qILiiCww69MSk9JeDjiJYJID1DRMKJwvmhH4JnXva+z6Kge50zFTQwe4F/w
	Scis0fJ36sv0Z5tUZqIQZGCG+5watCGqT9YzSTsF55LsLWIczKalfd0fhLOfvHjy1gipBZJuBCUgM
	1cqB3z/zJeuFYwKjS4eBkEPYUifC5e4p71ac/PBLW6gWqZnPSyEpKsrmD0aZtO5amOgVhhP6lnKMV
	EukC9B3YBdPedbZjyy6fdJKEdzpiDRx3KScPzzCiOrCQUvyKPJxmDw22+eZgX1q0LbCofhlFBC8Jm
	ztJ11ueSau5WMsiNnEDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37uu-0000000A9er-2CXm;
	Thu, 19 Mar 2026 07:35:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37up-0000000A9db-21AC;
	Thu, 19 Mar 2026 07:35:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Ob+IZvhkIha5DTBe/HV7/KpWvsF/0JXOGJlTDavxCws=; b=tIYa5UGtcxt5Dd9KipsIhazacC
	1UYaWUiZYE0DrOGTPZWVfAwPdvrYXQOKJQ0Nsb7XVtkbLEBxKFOhP6J1zIxtRyrxjXini150kTRos
	Vg8uog/4/LtlM1xrWTt5w2iGtCNbAs2Jmosvpj6fZgE7b3OyfFMu6TXXamCwnjTgFAnchSOOg9TkT
	iM0OqvHCnV26bcQTVTn+uCntE5Ts/8blaHPWuWoJSD2GkwjQowVfJfNhi+ELqQ/t9MEYakoxDPMp1
	PcuDeI+6ylqbfNs97YDdHRnvCpQjp90Dx1a00vK9HuhZ8EcDOZfzdyjMFSENeoK6w9urygCy3mzE5
	uooOGy0g==;
Received: from fr5000-r.dnsiaas.com ([92.42.104.18])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37um-00000005k09-07Ue;
	Thu, 19 Mar 2026 07:35:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ob+IZvhkIha5DTBe/HV7/KpWvsF/0JXOGJlTDavxCws=; b=LCUuc0Um3IQUEw5OCt8m2did9c
	02xLgHhXHwXZH5P4EDFOP8yzDJ7A3iTWYZKH30OL5QmITY9DQkR6qKJr3ySjkJd6IC1j9u9p4RIV1
	0HM6F70JB/NKV895yUVPsrqNzkA7VZbeck4zitfqmVCf6zZkEeYvKZhyrRQJ8+Q/OQsR1oNoKHc5r
	XMCob9bsXHbl86vGVRGXVSLqLHL9GiEirMJucbSpkw7JfihmXR7hOjOU/s+FCStp0eErIbgA+cuD7
	RwOUMsIzTkgkx8BAPcXjmSHLzGU1WxyCL7EgaDRfN+9aL6rKO3Z9ZjQ/DVltp8SMwPuuv6ZhYIRwB
	WYQ0+w5A==;
Received: from [109.52.2.233] (port=10095 helo=mac.lan)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <hello@superkali.me>)
	id 1w37tR-0000000DgEs-1Eqr;
	Thu, 19 Mar 2026 08:34:06 +0100
From: Daniele Briguglio <hello@superkali.me>
Date: Thu, 19 Mar 2026 08:34:00 +0100
Subject: [PATCH v2 2/3] clk: rockchip: allow grf_type_sys lookup in
 aux_grf_table
MIME-Version: 1.0
Message-Id: <20260319-rk3588-mclk-gate-grf-v2-2-c4c8daab0762@superkali.me>
References: <20260319-rk3588-mclk-gate-grf-v2-0-c4c8daab0762@superkali.me>
In-Reply-To: <20260319-rk3588-mclk-gate-grf-v2-0-c4c8daab0762@superkali.me>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Daniele Briguglio <hello@superkali.me>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773905640; l=1708;
 i=hello@superkali.me; s=20260316; h=from:subject:message-id;
 bh=WL4AZHxfBGBXO8GMVo8sFDi5dqnXuP+ssvyAyb87JKI=;
 b=CIBbXZiSnKKJf6/VCZVNzJ5/Lt9EuE5/PE8VkfNlNP486LQx0DFv1wQzMlAK+TMvYM17A3kOZ
 iPesQEuOR6EAbz3FxOiT0p4rKB9TickY9UT0KBVTzswjrW3QbrNIp6c
X-Developer-Key: i=hello@superkali.me; a=ed25519;
 pk=5tynRWQdL93CDcapJ73FkcCRY2PeBOJOIAoIhRig53U=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_073532_104612_511E3EB9 
X-CRM114-Status: UNSURE (   8.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Remove the grf_type_sys exclusion from the auxiliary GRF table lookup
in rockchip_clk_register_branches(). Previously, branches with
grf_type_sys always used ctx->grf directly, bypassing the aux_grf_table.

This is a problem on SoCs like RK3588 where ctx->grf points to the
PHP_GRF (set via the CRU's rockchip,grf phandle), but GATE_GRF clock
entries need to access the SYS_GRF instead.

With this change, grf_type_sys branches first check the aux_grf_table,
and fall back to ctx->grf if no entry is found. This is backwards
compatible: on SoCs that do not register grf_type_sys in the
aux_grf_table, the behavior is unchanged.

Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Daniele Briguglio <hello@superkali.me>
---
 drivers/clk/rockchip/clk.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index e8b3b0b9a4f8..911e6b610618 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -509,10 +509,9 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 		clk = NULL;
 
 		/* for GRF-dependent branches, choose the right grf first */
-		if ((list->branch_type == branch_grf_mux ||
-		     list->branch_type == branch_grf_gate ||
-		     list->branch_type == branch_grf_mmc) &&
-		    list->grf_type != grf_type_sys) {
+		if (list->branch_type == branch_grf_mux ||
+		    list->branch_type == branch_grf_gate ||
+		    list->branch_type == branch_grf_mmc) {
 			hash_for_each_possible(ctx->aux_grf_table, agrf, node, list->grf_type) {
 				if (agrf->type == list->grf_type) {
 					grf = agrf->grf;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
