Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7290BC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 May 2022 15:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ipy5aiItzrHewe3651GFHjD2ZeZMDqlPbLD6k/TqvPM=; b=R4sK8ovsbcC1mU
	Ke7LVmBpEkptUWXzgJPQTFjgrhrZpVruDrE8+t3tWYqq5nOX5d9tMTHzcKyrWNWBJw2b13XQNUn5w
	+lDOhs/Hs6wxNjxJ5qljQqZWEPQTQ/OcKljtjfArGO/ZnjLZBkdt2MysDukVio3UgPmSk4wKWjKH4
	QN9DBPk+5Vm2KXvi4N/GidM/WRUX4XRqfRvo5/+Ido7pLw+LIBkaiW+7B5yAnKyC65KdQIs4Exstb
	YKmd+4RtnJ/gPA+YQkNXj81Lq7nQ+dncDE8l7okZezt6X3k/MlMzkxbNuir6jvJZiLUmniieA0fWx
	5u7vi0HCVTDlw0MgpdJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqcOv-008ZND-RZ; Mon, 16 May 2022 15:12:49 +0000
Received: from mail-oa1-f42.google.com ([209.85.160.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqcOc-008ZDv-OI; Mon, 16 May 2022 15:12:31 +0000
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-edf9ddb312so20466557fac.8; 
 Mon, 16 May 2022 08:12:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=znK6Xi/ZZGwAG1mufIgwNSTMcdTMg6wUp+SUygn6ioI=;
 b=wVkfd12V8fZrPT9E1MGJ/VTckopGjABFRVc6pJBdppMH4yOL5DkIxvRvTGdiELm1Nb
 VtDY3PwPEjp9IhnG8Z7SSq9fTBebL5yjnpTmSRM+LzuF9vc1ME63EYg7w6p5IOKsLjZs
 jOiQAjWpTQIEc7Vm5FHvaAe+gwdapmuVpY4JRwkr0PyZzX9NV2iShjVnO/ufwhtREAsJ
 uqjoq2/IcSBDlbD9ZnkzZ2FMhkt6uRGVM05LNNBHPqoZ7gcCI0rrdRkhdZJhSLLbEP8X
 MxXI8uJEJh3Bm5ZM+jhEBbQ9knQBlv+2cge1IJnGzlMfRfarx5WSsRBVgZKN9Mr7TY84
 nUUA==
X-Gm-Message-State: AOAM530Qgbkvxhtg08sLvOsSp1SD4jVTjicAF6bjhvuHZu7+Hr/hr80A
 a7avlVGXUJDEdQCpqPKEDg==
X-Google-Smtp-Source: ABdhPJxPwFMBKNVLxZpvbM0oKINdhczioV6MSSHnKVI7RMNwc5BdKvXqQN13cVGRLoewA3V9riVaNQ==
X-Received: by 2002:a05:6870:4596:b0:da:b3f:2b1d with SMTP id
 y22-20020a056870459600b000da0b3f2b1dmr16326831oao.188.1652713947847; 
 Mon, 16 May 2022 08:12:27 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 r12-20020a056808210c00b00325cda1ff8fsm3826021oiw.14.2022.05.16.08.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 08:12:27 -0700 (PDT)
Received: (nullmailer pid 2653921 invoked by uid 1000);
 Mon, 16 May 2022 15:12:26 -0000
Date: Mon, 16 May 2022 10:12:26 -0500
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Message-ID: <20220516151226.GA2653888-robh@kernel.org>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
 <20220511082109.1110043-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220511082109.1110043-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_081230_827630_900168F6 
X-CRM114-Status: GOOD (  11.70  )
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

On Wed, 11 May 2022 10:21:07 +0200, Sascha Hauer wrote:
> The VOP2 driver relies on reg-names properties, but these are not
> documented. Add the missing documentation, make reg-names mandatory
> and increase minItems to 2 as always both register spaces are needed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v1:
>     - Drop minItems
>     - Add reg-names properties to example
> 
>  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
