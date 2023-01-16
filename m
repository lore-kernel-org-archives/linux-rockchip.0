Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D138C54EBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 12:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X98fwIiR0r9X8sFwzYO2SFMyYxbiRUm39+8cOxEnM9A=; b=ykSVOaQSNpllg5
	VoSukqc6Fk39IuTC4IaSsUQGi1FcPa+codCO9vIVk4ducxESzRLumqVbVZFgGui9jLA8cMLFzzZca
	6w9fqq7GK3dWqqonr2yUB6HTvpOR4elix0zJxgTtt7Yzd2SCmeNF+qcKrDVdK8TRrHVfBfRMTWNb0
	1ukzrZQdjLwqacId5dmisNtdeklRB9y5RqIhOnXr8jXmjWFHjpu27CBLSOymZHDpe+Uek78KhoRpR
	w9IFjWg1HoBekZxNMbJ8zFe5pWy79ITv9EztGWU44ATWacl+qY1Fa07G8OjPdn9R9XxNiCG2Hnt1I
	atgg3NJIIY0fQTHP9IHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOi1-00A6wk-K3; Mon, 16 Jan 2023 12:35:29 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOhz-00A6w5-8P
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 12:35:28 +0000
Received: by mail-yb1-xb29.google.com with SMTP id o75so30123537yba.2
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Jan 2023 04:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/erdhCvJApG5+vMesdd42dNerta3+LyPUExayIGJPz0=;
        b=itZ+gDDTGwuqBx/tze1RvlEJN6u0EwoKQK0i1czQF/cl/UscOfz6YkJegbygVvnrMp
         tydo6HMMV5c7DobR3fHke+4bSyEgulQb0Ew+P7FzMYldQrV4/mZU4KB+y/8DCQzvuy7s
         MUhHh384PCVdpJ3iJPHcLbjwixsAx77cmLWOITqfCSi7LiLAsMmM8lLUqjn9pSBN61xI
         DOXsOIjgDXJkWQuxmXktlp/jOKVXc/MA8YsG3hX0qt328aaEpUEb2w6iE8J2AKtnxr1Q
         AhlcJa+r6B1r21bTWW0Vw0yIyTGxaOowB/tOLoCuveWnmUTZ2givnijP1r6RiIBvW8so
         ZKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/erdhCvJApG5+vMesdd42dNerta3+LyPUExayIGJPz0=;
        b=eT5d22FlTmFMN9a7gmLD6JzztQ1/xaiHi3vwwac+6yQrTFYF/91V9AOeMD0rp1L5ft
         s1/4ZIeIKgnGqyoLFXX0ueFvPcv7/kwHnSLwBm2D3+UwSyhx0vChjVsoA6nmzMAN/zrc
         0bQxhQvorM7zFVY2TgzhkJgG9OgnQ9sviQ9ToreDk3maZ+QsowY0799Pyk4jMNeioKJU
         N9D8oCoj9UySukfRA6gQAuBS/TVHpRAyJb+ysuPs4/9OqbcPXgon2SVmzNbwFLM+r7ds
         5RF8cU7pblsSlG7gVVF7ybaq6Lr89fAe8uSvUnMIKM/6u2XbfSoouJE1lSUbzPKT9oom
         tEpA==
X-Gm-Message-State: AFqh2koxIyxQ5sLu7eOZaG0j4K+yAA7fG2GfofX5oehLdErsl/xk/uaO
	BNUuO3yuMxtcIQmZ4ac6OACPCj8cvJilRjjQlj6ezg==
X-Google-Smtp-Source: AMrXdXt1WAMrSMDgrFvzDatVwEnbHDFT16F4YV0aLDOnGxfs2CR1LL+5Qr5ImSLTYmxCautE2oqiS8pGzCGYY5jDKcQ=
X-Received: by 2002:a25:d08d:0:b0:7ca:9b40:72a7 with SMTP id
 h135-20020a25d08d000000b007ca9b4072a7mr1821610ybg.130.1673872525317; Mon, 16
 Jan 2023 04:35:25 -0800 (PST)
MIME-Version: 1.0
References: <20230110200255.1218738-2-macroalpha82@gmail.com> <202301111039.dxBiLene-lkp@intel.com>
In-Reply-To: <202301111039.dxBiLene-lkp@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Jan 2023 13:35:13 +0100
Message-ID: <CACRpkdbvsFDDRt1otJcZ-mPdSBecL0cwDSW92YeBGmmyLXee0A@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] drm: of: Add drm_of_get_dsi_bus helper function
To: kernel test robot <lkp@intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>, tzimmermann@suse.de, 
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org, 
	thierry.reding@gmail.com, krzysztof.kozlowski+dt@linaro.org, 
	oe-kbuild-all@lists.linux.dev, sam@ravnborg.org, maccraft123mc@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_043527_318408_8013AE2E 
X-CRM114-Status: UNSURE (   7.29  )
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

On Wed, Jan 11, 2023 at 4:01 AM kernel test robot <lkp@intel.com> wrote:

>    126  static inline int
>    127  drm_of_get_data_lanes_count_ep(const struct device_node *port,
>    128                                 int port_reg, int reg,
>    129                                 const unsigned int min,
>    130                                 const unsigned int max)
>    131  {
>    132          return -EINVAL;
>    133  }
>  > 134  struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
>    135                                           struct mipi_dsi_device_info *info)
>    136  {
>    137          return ERR_PTR(-EINVAL);
>    138  }
>    139  #endif

This needs to be prefixed "static inline" like the function above, then
I bet it works.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
