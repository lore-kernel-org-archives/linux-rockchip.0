Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68741C38A02
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVkysJnw+HAPvlh1+XtiWmMpTDcu2J6qfJkYdPa12dQ=; b=y54mpH9jOVUDKH
	ElwsaAPu9TxAboKo/YHiXfzjarKAgU4+LsiKtffJkJJUsLQl/e2enjE3+Gp0HvmCmT85icOO0F7S6
	x4JtfkzpMEl9f+xogKnhHP/kofSt1na6SRMepMen+92WSqXLvsGVIk4R/5eJqrCvtznUygABeEWrV
	7anNWlIdzxeGjFD/4Vf/l6ZSQJ1npyCHb9IZqnJhaSkIMHDfVGW73e/LBvT1okCKs941GWCClL/xo
	C0rtbNNETCkTBrIuXUruDGW+UeZ6MFwsvyXjcHBBLL3Bq5zxHd5p96APP/qry+YK8+WvAwoP7q5md
	KTMm+WNne/C4PCtuw2bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opToH-00Bd9f-4g; Mon, 31 Oct 2022 12:22:33 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opToE-00Bd7B-7Z
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667218949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xVJodACOlUyVw6jJB0o/QffeIPQi24/sF6MmyMfBvgg=;
	b=AD3YqiH6p2ttr44BpYQxrxqMRTPybN7R/b6HdOO7WVOug/Q1OjwZu85lR+0dhw9vB0ZNLp
	v7HafG6DmjwvnlLt3brJJxuyUzEl6cdvpUV5fqKr5ZAt+IBZq1/R/Xx18Uo02XSc4VOIrG
	Mu6cRHxrbzkM8L0aY3CeC+LMDI6BwZY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-375-5A-ph386M8yxMb_qsBOgRw-1; Mon, 31 Oct 2022 08:22:28 -0400
X-MC-Unique: 5A-ph386M8yxMb_qsBOgRw-1
Received: by mail-wm1-f71.google.com with SMTP id i128-20020a1c3b86000000b003cf4ff1b917so5239936wma.2
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 05:22:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xVJodACOlUyVw6jJB0o/QffeIPQi24/sF6MmyMfBvgg=;
        b=AL4guFKAYTFNoqD1jCKCKazGz99ix23UCzg1GqeAhQHVBMPqW7WoiKIBoUdMmTovtf
         dRCqiu/vj08//nJX6hVBXRTfS6CDbkggleE5XovL7nSDGU33gG+uzPeCNWYcOkq/pUf2
         wR+bVZYlaLBE+0Oardsj2x1W4yDXQJwnGs1CbGOiPNVLbJzoxyJc65blGxKQjwABhP25
         Za2kihDbLbMKcpweXabChrhzD8sZk9NlXxF/BD/juUzqXXD0uN+zssDaapFA0Px9lUHj
         LXcCiUMVwpPJBFPa+0gvlYtVxymaQUCKruu6q1ELRBlIICWd+819vXwwewuusbcJYhHM
         re9Q==
X-Gm-Message-State: ACrzQf0wn7xOe3E+z7sH/+be7YHwbjm61PD+nw1bo6FZBQ433GN+xBTF
	3vdI8AH8VGrNcFZCAkg+Gb5zAPLLwWbE0RJXVyY28or1dRH1ZZ5tS3d7Mt++qEusVlpv7nne+mE
	BUUc/ri/gSeSzzi6P7c+qqcXUoE5saMlu
X-Received: by 2002:a05:600c:46ce:b0:3c6:f274:33b2 with SMTP id q14-20020a05600c46ce00b003c6f27433b2mr7860196wmo.27.1667218947042;
        Mon, 31 Oct 2022 05:22:27 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4zVdpLNc1mYDp74XAWVtjpPddzcwMDONTh4D+G0X15w3fKqsphKr/pP9hn5PrcknLAkhJ5Mg==
X-Received: by 2002:a05:600c:46ce:b0:3c6:f274:33b2 with SMTP id q14-20020a05600c46ce00b003c6f27433b2mr7860165wmo.27.1667218946788;
        Mon, 31 Oct 2022 05:22:26 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f16-20020a05600c4e9000b003cf568a736csm5157904wmq.20.2022.10.31.05.22.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 05:22:26 -0700 (PDT)
Message-ID: <ea046b06-fb0e-b7c2-8f70-b299401d9adf@redhat.com>
Date: Mon, 31 Oct 2022 13:22:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 10/21] drm/tve200: Include <linux/of.h>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 etnaviv@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, xen-devel@lists.xenproject.org
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <20221024111953.24307-11-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-11-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_052230_411565_4B6D773C 
X-CRM114-Status: UNSURE (   6.57  )
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

On 10/24/22 13:19, Thomas Zimmermann wrote:
> Include <linux/of.h> for of_match_ptr().
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
