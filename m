Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3349DC05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 15:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2NWVBjj74fZ1r2+lMUqjD5E6f/MGGswTA7G6/S3SSA=; b=RhsJnQonu8Zlrg
	tV7nhA04sDP87Cravz12GqaRLggTfirWmodGSpDfD/sbi/Q9/08t6YfPxjUsoRmZzthlGHJcFzai1
	S5RnimPd7hvXTA3/LqW3wGIoWSSTTwSvvFTz+7R39AUkSJaJN/V37Nq9gOFuy3BgeXzKIavH04TlM
	Eq53gJTRzB2q7ysnLLcYQXcnn02czBBrL+GPz0Rhx3Fh8RRGNdnFGzoF9gHY5DgfnslKrIc0pMNbJ
	x6UjWrfYJjLO9B5EauR/e11UZzy2R7wB/wG7o6gHo4trjs+Ozz8JRoYcfRNy8S/y1lZshNpEN909m
	vqq5WkiyJRLPW8u1HX5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL49e-00BVjB-Vp; Thu, 26 Jan 2023 15:27:11 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL496-00BVU0-Ez
	for linux-rockchip@lists.infradead.org; Thu, 26 Jan 2023 15:26:39 +0000
Received: by mail-wr1-x42b.google.com with SMTP id y1so2154754wru.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jan 2023 07:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iDdaSVhd5CpA3qgDsZzi9xAHqh15/HlhGhX8YUuZLwA=;
        b=HRdDS1V/TLxjS2GGcqYHLy4Y1urFg+5UVtROC9Cioz/CF1HW8qbw0IHcrS8HcYu1ZI
         wwNTXlVC8gkCWWmjs2QHQf5Zuum5FNomWZ/xkNAx3TrYYDseEAQfxeYwp/kz8IkXgK3r
         z/UKceE9KqKqD0lpVumd64YZulgQqW4mgty0SLshKP5ljitCesUEbOOmT58UvurbP/4Q
         MFiISbBqvJJSY0Z+NfZ12/9skiEOFj3v79fZDSCmkgOQVw1N7SJ1YTr0viJGSe2E3prA
         wXLmUhdv+d+dpGifHxLcf//UGWZH38jjGIYAKU+4L9Y3QkvqZBRLQSrBlMkfM+MMkGtF
         Mw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iDdaSVhd5CpA3qgDsZzi9xAHqh15/HlhGhX8YUuZLwA=;
        b=slIqcRVja/xTgGK2AnE2O9XRbgkfIoAXleCAvqpG98kjFAzt35UfUcfiGr+Mg8kbFe
         xkFRkGx1Al2e6SS/0+6+rYg+TeV1jzosVNdLyvj3uVvjWBwk1lXMC3xoPQwTTcLgxsvV
         iZA93CMq5LjS757GWqVE3/gffskGIQj7CbNrziMdEC/LMYN5mqulKfT2p7ttxA6b/Zk/
         LZVUxHAlwVl4CYGafc3LHpG3mOhq016sDiEpDwhQWuiXj9SMM7fMhRY0uN9Ml4p5i+ZT
         FGU4LyviRzFlBZmF7AAaLJYqDr+OuZFwdGyVeBsOgvFG7+VCJ5z+vcT0+PWZxgEfE+Pf
         vlcg==
X-Gm-Message-State: AFqh2kpFPmsQQ0TvVTRbBjgOn1DBYXyGOcfEakl//yaoVl3F62nPo/+W
	u0uBhuMJhyioWLddHH6tbJwtmg==
X-Google-Smtp-Source: AMrXdXuP4CJtdOq/zPr2e/Xeh1e4qSoa8xWKXlc1G0/HAMne2EK5PtyYKZrwS1u4RNaZ8GVTzdWcMw==
X-Received: by 2002:adf:edd1:0:b0:2bd:c6ce:7bfc with SMTP id v17-20020adfedd1000000b002bdc6ce7bfcmr33250169wro.42.1674746794182;
        Thu, 26 Jan 2023 07:26:34 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm2032240wrr.72.2023.01.26.07.26.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 07:26:33 -0800 (PST)
Message-ID: <b2dc1a50-58d2-13a7-2773-21c649b17f1a@linaro.org>
Date: Thu, 26 Jan 2023 16:26:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 8/8] PCI: rockchip: Fixed MSI generation from PCIe
 endpoint core
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, wenrui.li@rock-chips.com,
 rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
 <20230126135049.708524-9-rick.wertenbroek@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230126135049.708524-9-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_072636_633029_9C0F30B4 
X-CRM114-Status: GOOD (  10.17  )
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

On 26/01/2023 14:50, Rick Wertenbroek wrote:
> The generation of MSI interrupts from the RK3399 PCIe endpoint core was
> broken. The main issue came from u16 variables to be used to access u32
> registers, this would lead to shifts of more than 16 bits moving data
> out of the variable etc. Address translation for sending the MSI messages
> over PCIe has also been fixed.
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

Same comments as other fix. Missing Fixes tag, cc-stable, move to the
beginning of patchset.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
