Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CCB606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 20:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VMqPwxZY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=PMAJsqEd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kkODJPyW7W3uj5SvgwjpDli0oDZTB5TOdE58CKpBi0I=; b=VMqPwxZYOvcp1ZnYImT+xzVQs7
	5j4uSTdVFS5qeqNMWKRyfTE67v0RLqZ7235cgnNdgF4up+RamMf7TaDoRx68JjogOUJNg4IbMN6Wv
	/wAx2aKDMb++xRRr1n0ei8O6/if5kJSzcdGYBO6akPgXEDwgsgxILGFxm9yuFkhPR9CZJBUPNx2Wl
	Qx/3/fFYmB1HnO3mFRxs2Qwhs2tSjTRlP53MR5lfDVidkwlNlVvhOZqtkuf5SCY2ELbrC4hQ4O6EW
	Djkp77Vyqsc2ZYxHDVlg8VlHvUz9X+7AESbgGc8ugZL7KjMGO1ZEeG1QTyZ7qYHSk6S3Gj+iHjgZK
	HMAnisAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX2A5-000000001pV-1Ntn;
	Fri, 27 Nov 2026 20:03:13 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX2A0-000000001mf-2t89
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 20:03:10 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-c5127c7abd5so1292661666b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 12:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795809787; x=1796414587; darn=lists.infradead.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=wtusPwl7oTxkglScGF7WcIoLENdcCkcXrxudV6XyW/M=;
        b=PMAJsqEdYAKIeXQsBIb2RILIAkX8vS0Zh0WoZ0C1zERaNqauCGDQliXH6YqN+Z8gtI
         W0UCQHQYUmfpEtS6ZVHuSdc5xmFUufdtmYpv83LI6IThDc2oJPT8Kb2Ps0yMPAFB/WwN
         2zNOtTbP7Tn59lnAQCkYf2wFGvVD+Y3Kd4jlz/hclnPo2Z83yIfEGCOkWOEm5XJpVeTL
         vOLDN7Le2zJ0as/pV1Iwk8VDNTN2IbB8R6NoRFDfQ3dEMOfEjuSP+uUmA0BJ87POzp31
         /D2r/scTT0Px/tAkI/zZRZS7JreJpHrN0URSJsEJC4CM9oOO48HhS1tamGLaJvOkozNz
         +1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795809787; x=1796414587;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wtusPwl7oTxkglScGF7WcIoLENdcCkcXrxudV6XyW/M=;
        b=HPxPMonlcZSDCtOEc/3ncSYu/ipguFsKlezaE5MpRFESL2o9KLb9C1vILMEMXMemvF
         TAhkI9bpVJWbu46gG5ZSNtB1ryV+r/Z6Z3eSy0/k/C8BCI2TPg0o27HYBjTvuaxUzy3w
         Hp7weOVweY5RlbQK2RDKea7hUdBJjdQTj+8XghWnmwpPC6JBSTBzlvX90IBToYmcwAmM
         SwUgIY7RlQ3SuQSEiD6vtHPR0lYdFkOc4KLNkQB2BRaCSFYX4HLF3Em7of5VZUGPZOkd
         bJL+84WagxMt3GeqR/FNJ/4lf7qiaIDTnQ9fuNNc1K75rr2mKzd6V3D939G2bGwSWOIn
         F1jA==
X-Forwarded-Encrypted: i=1; AL+hErGfHRYvf83cuwy/CbaxkEoVQ/S4G1ZPuu+ceZbuKpBh70nMRRFbC7wJQq3lYMcy4y6atfEGL+Lv5KvefSyWYA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9rpp8cDzUW9JX4bGLeI3tra2lUC7rx0TYssv9UZCMbUy2A7EA6
	AKNfVysBm1km2iFSHeslXCbfxjWGLzx+krkvy8S53PwU4xhyPQyO3Rr+FumEdxPoTcY=
X-Gm-Gg: AZFdTZdP0wjg41dHficUxYRVuywuzd18tzH9QuIZgIcqNUkXRb3qpoWYd3r4qzei2Ns
	/xGYplsCC4cA4UQ7dJmum6e2W0bkcNwVD59v5U24GueubqVuQRRqYhBhMX8KMzMABHZxKce3H3v
	k+zr3ixXyAanMabnigVAk+uMbJliev4rI8tEd6zK6cPZ4Fr54xX5SKeoXE/lKLaYLjLGwrY8H+l
	qk0tpbvVn5k0IfoxlFuITb4nWZEmXpWJ/lXudcAQVkkRW56x2WXFllq6vRtVu9nh6aXXIKpQLGN
	/RrMBGhrO+d5oiJC2fngCLg6p49jEbrXhgd6a9igcMNy5OUt99RQfj1oe8l8boE/l27j6tTbpB3
	mgvsVPXkoRyssiHt9XShuo1gHsqlFcIWU+uMFASQC9a0QfL82KR7gCCFkSEx7T3C9sLO1LG9MdH
	Y+KyaTmaHxG0P4FzG3SNDUvBJwn//mdaegbLdvqGVCqLnJ0CMxMOh56QrNaz1/LO+mSMcYsYydW
	0i/uQ5c+61xB8pB6tlspKudbzCku4+KD/v5RfMkKVtE6cDrDIi0nSpKivgcuSYMZ8DN6rMWxsV3
	Ccvon/umYUDEDjfBeeosZhMKmBf5ZnA3D/mZr/mn23FagJkd
X-Received: by 2002:a17:906:5908:b0:c3f:d8f2:f08e with SMTP id a640c23a62f3a-c513aad1aa7mr1591096666b.44.1795809786817;
        Fri, 27 Nov 2026 12:03:06 -0800 (PST)
Received: from localhost (82-67-6-57.subs.proxad.net. [82.67.6.57])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513ae661b3sm897861366b.16.2026.11.27.12.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 12:03:06 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/6] clk: Add dev_clk_get_from_provider()
From: Jerome Brunet <jbrunet@baylibre.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Russell King <linux@armlinux.org.uk>, Paul Walmsley <paul@pwsan.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andyshrk@163.com>, Ulf Hansson <ulfh@kernel.org>, 
 linux-clk@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-pm@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>
In-Reply-To: <7155949aea78042fd399da5ad23a72765b2b6cc7.1795094688.git.geert+renesas@glider.be>
References: <cover.1795094688.git.geert+renesas@glider.be>
 <7155949aea78042fd399da5ad23a72765b2b6cc7.1795094688.git.geert+renesas@glider.be>
Date: Fri, 27 Nov 2026 21:02:59 +0100
Message-Id: <179580977969.3028968.47907747276860033.b4-review@b4>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=576; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=w+BoHiPo+P6YGPZSkRwTWt/kGI08hfYqlVrPoLWDzrs=;
 b=owGbwMvMwCW2VtK+WnvWU3HG02pJDNmcD781zBdazCsg9lL/zber23mznz9vt33xqqNRSyql5
 9/lP4XqHaUsDGJcDLJiiiw13NXi7yS1vsyarnMbZg4rE8gQBi5OAZjIejtGhnPrDj/t/PYpMF4p
 5/BazfN3D21QT/A6eNT9yBfJZ1dZop8wMpzYzS/A8uDOTLmdR+uChb9oSs6TL/Rb7JC9947joo3
 LLnMBAA==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_120308_745429_A17C2B76 
X-CRM114-Status: UNSURE (   8.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 19 Nov 2026 14:40:35 +0100, Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> Clocks obtained through of_clk_get_from_provider() show up as
> "deviceless" in the consumer column of the clk_summary file in debugfs.
> Add a new variant dev_clk_get_from_provider() that also takes a consumer
> device, so callers can provide it, and consumer's name will be shown in
> the clk_summary output.
> 
> Reimplement of_clk_get_from_provider() on top of
> dev_clk_get_from_provider().
> 
> [...]

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

-- 
Jerome


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
