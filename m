Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 719C3C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 14:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUhEUY1d65E//STIcVCqhB1BnO21jHUHSfY3sYe2Gps=; b=YO2oysEcUzwSv5
	ESMQXD8hyitEpmN8BuLb6UOw3ucJ9YGxR7Al/aYVZ/qNbrbDJbpBnOxC2Da5TZ52SMvr5PO/RlBxV
	UO1LRQVbROrTBaMXpqdcYCOfiGRM19KKIwVH51Rq+wEpYl1Kb7xIZDht2bP8OWF7uk66uYzYfCKfZ
	ik69p7Gz/GHoOq2tbuwwimnmFaQOzpTLojkPQ8H/j7G86w/f2KdcHu820gjLzRTM1IdvBlTqZ6b/y
	IbLsZbDawCbMkDjOp6mDgGuPwsYFMuqOf27sICV3ie7YIDtbww6E0mWRV3DUWVB3djDuEJUNbdR5r
	KFtGWKB5hTTtsVoioleg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc5ev-00ASuq-1B;
	Tue, 14 Mar 2023 14:29:49 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc5er-00ASt5-2d
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Mar 2023 14:29:48 +0000
Received: by mail-ed1-x52a.google.com with SMTP id ek18so31672676edb.6
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Mar 2023 07:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678804181;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ElHjwIeT7npoxRMCw2nu+jmWqBva4+bKaapSz/mECSU=;
        b=TwVSJKTA35/n7SvFYUMIlB1ti+ObmERDISpugC0l5FukjPltxsLMTim+fYoqzITV48
         Trw+IaBTNH1Tc9uawQC+HZo+5oPJTqFty35G1Umuv/dmjPrqA7Eqneu1dZxeABPqSIRD
         0f2MjRjrXYt7GZEGmmhaPIVxnGU/zIf6NCHbYcuZXxOkybmaJvexGSBxykK//oLP3mPE
         5NK/nUYaWU/eyPRFiOcLoaP2qNqxVsCFrGcsGYdmIXXdLU2b9X7Pw9KMtNQM3D8xMqkt
         mJvuya1ZYDXNI2zXQb+o408sxCZy1cUeWmQTOZO9EjYw5CFdtzAhPMdhEg8f4Sqa6N5w
         Hc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678804181;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ElHjwIeT7npoxRMCw2nu+jmWqBva4+bKaapSz/mECSU=;
        b=rA6eZwUAC8MPW/KEenXoRP5Cjd+g+lLV3W1SNZDTU8V/823nUyZeWszDlsqDwP0fxy
         9hlsrlxCvn7EGoyIjQ1LkzexmHIYKlDMXXo3d4mjJgAJvsbNX6g2LUaeHZwfJ4GA0upV
         +8JtlYCQW3Ov2tQzw8ElOsFOqQweeCHZO7Kfz8zIHs1PE65hRlCPzCAKcyypN+d1weDo
         BRp2nvzLNuGbVthbuj1KwUNqp+clslpR7cIusDN+ajv1mWBtPBEE+9u7b2SjvSuKRRGo
         XO/J+gBgpcp7uJtRwTmrr6DV12ALrU1AHnPP7/+8hIOtge5jO1XYzAbu8FvYPbqd7FU/
         wQTg==
X-Gm-Message-State: AO0yUKX92QVtR7J9sZXA3AGL+K4g8+Mb1XXNXP8plZSPNji0PBxf9zpR
	4dPry1oQkmNBDHmZb/KSPWtkwA==
X-Google-Smtp-Source: AK7set8BTJKzs7H5rL6iH9MVtKlcHgRUHKBlpQX+UW1cWD83NcyG/8r94I7ANT1OFh2CKPgR9hQNTQ==
X-Received: by 2002:a05:6402:202e:b0:4fd:c862:b3b7 with SMTP id ay14-20020a056402202e00b004fdc862b3b7mr2490284edb.20.1678804181215;
        Tue, 14 Mar 2023 07:29:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id s23-20020a50ab17000000b004f1e91c9f87sm1147798edc.3.2023.03.14.07.29.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 07:29:40 -0700 (PDT)
Message-ID: <9756a5ae-a5f9-c2e0-1bb4-cdcc4373b891@linaro.org>
Date: Tue, 14 Mar 2023 15:29:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCHv2 1/3] dt-bindings: PCI: dwc: Add rk3588 compatible
Content-Language: en-US
To: Lucas Tanure <lucas.tanure@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230314135555.44162-1-lucas.tanure@collabora.com>
 <20230314135555.44162-2-lucas.tanure@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314135555.44162-2-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_072945_858978_416ED6F1 
X-CRM114-Status: UNSURE (   7.87  )
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

On 14/03/2023 14:55, Lucas Tanure wrote:
> PCIe for RK3588 is the same as RK3568.
> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
