Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E15FC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 17:45:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6AF1960F51
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 17:45:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6AF1960F51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYs26xPvW4s6XoRXAlcXcmEyHtc08BrdjLdk2/GncKE=; b=UC4y1YD5DyzJjR
	iA8L1es0ej3RWWvQV901AL/V+z1XBBx2I+2+J20h2BVbIbtybO8heNyu+YMdCbazJszuGr9CD7AWz
	y3Vjh2q5k6I/KZQ1SsogsBDRVF6B5U/5kqZtOLzA+EPgp17iyfSCgP/QO8l+0f7zwOPfohqWpyVuB
	Nj8bSwf2Q4NgjpbNNqiJan8SalpJjTMGmYCA9Rs5inUS5mpAdLJdH2e2wnYqvnvLJrWbjotqntjrW
	XCdx22pCmwjDgzQ2agvr04lyLaeNGkZRs0UbD//3KzHXLS6vq+Urjpp13RQObPglGLKRFy1sWsgER
	yP6AFPDJpdrmkHbbd3yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEbFC-00DI0M-Pd; Fri, 13 Aug 2021 17:45:22 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEbFA-00DHzr-Ey
 for linux-rockchip@lists.infradead.org; Fri, 13 Aug 2021 17:45:21 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 u13-20020a9d4d8d0000b02905177c9e0a4aso2368033otk.3
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Aug 2021 10:45:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/tRJJqRyWJqAafGX76y4iwOE1vDparJzpmZe1NF8mMQ=;
 b=j128c/7OUpFvx8iKD+nWdMCC9+8MzJTNSAaU+fUjx6LHV8wKCpsHF0neF6i+g1yuoZ
 CraR1K2OPXbJOE9dfh1xZ7wDFfRKy7gATTE445FLk+rdr6i+BDGL8a+WApDIybP7bZdb
 efLBrgBzZKMcbNKA7nowb1+6GzLNsTzQKPpvI2DV622SEmqRlMsozH3ayhIHHJumFsrI
 2zJLfm08IQevoPLZJGXmCAAuaRxS0awzyjQl73nBIH2A4D55O9ehaoOJF/vMxd3KzZuC
 QmdybzJYwB4Lxcs4tdbeVc3jV0TspERGlbblATcgF/iED2Ogx67io8lw5GykNWrUkd69
 rQNQ==
X-Gm-Message-State: AOAM531NteW7YUP9a5bkiGsch8RHS+yLamRv5EIuJGlWf+Lt6vrd2+rW
 1gOEXCWMWxiSI+qvEmrwzBvYVqhS1w==
X-Google-Smtp-Source: ABdhPJyovJzS1FxaUL0k/lw2dKsfYXld3XGCueBU0/vxcNy8I2elUWEkepjsmVlUmRqcFvjcJHv7rg==
X-Received: by 2002:a9d:5f0e:: with SMTP id f14mr3008794oti.107.1628876718430; 
 Fri, 13 Aug 2021 10:45:18 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z12sm434094otj.1.2021.08.13.10.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 10:45:17 -0700 (PDT)
Received: (nullmailer pid 3743626 invoked by uid 1000);
 Fri, 13 Aug 2021 17:45:16 -0000
Date: Fri, 13 Aug 2021 12:45:16 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: gpu: mali-bifrost: Add RK3568
 compatible
Message-ID: <YRavrOQTnvU5amqZ@robh.at.kernel.org>
References: <20210805025948.10900-1-ezequiel@collabora.com>
 <20210805025948.10900-3-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805025948.10900-3-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_104520_546882_C3666308 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 04 Aug 2021 23:59:46 -0300, Ezequiel Garcia wrote:
> The Rockchip RK3568 SoC has a Bifrost Mali-G52 GPU,
> add a compatible string for it.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
