Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02454C54798
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 15:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfjGImAtP/qvX5Pjd8zVsQEPLQ5jq39tDspdLEezBH4=; b=G2GT0rFyFANPi3
	CiXXvf35UhBOgrbNjfup3ZeDvTAgPeD+kO1VprDHvocYI3mXI9/94EU9+jrNqLLkak3dDIW5fNbxm
	N+ZgfO8EV7nY5k9e0H5khVlqoykuFQN10TARrDdOj1Om3Ri18oQmkTOtva1vIueDiurVp+U2qpae8
	5JuINLP912PD+V2JkaMDmIvNXX8dMAaXF7ab7xojU5+hqdoA7IXVZYWp484mCG09HCm+FC6/hc9Re
	rU005l3Cr1CnWCpnrOoUw0SwTA9skH9M/OTfOKCPYtSox6boG5z6svIqmj4rwyshKbKCZEet3UYeG
	slR/vYm0NRNHk/QGhHFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWKf-0000000EBvl-0dV2;
	Tue, 05 Mar 2024 15:03:53 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWKb-0000000EBtL-2JdK;
	Tue, 05 Mar 2024 15:03:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8C29ACE1C58;
	Tue,  5 Mar 2024 15:03:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 908F3C43394;
	Tue,  5 Mar 2024 15:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709651026;
	bh=7K1Q62MNa2I2tcivs5UpDzs/Q6BDZTp7gt5DMjXX6LA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SzskPTw7LNMKes+5ala2+bPQLigTb/r1OPUxYscE2ahpKI1c0LygtEMrM7f83VcGY
	 pf30SFCjSRsIyfu5Ip4N5zKEKDUKu6FFZWaLaVi3v26LhpQryO5IqXJA0cHCBwmiw9
	 G/1DThwGzxpDW8kJqZ0VghYylzbyQCGbeA4aDHsaxEuVl/d62JCPerGXX8Wm5t/642
	 /8YOv2u2zrvtOE6rQ7zbxc6qPY7GmlsZMIKdoRU6TApAr6AcV9lCQDJnKVoIGegC6p
	 9QbTXmlND1+RWCLSpvvi7KyalLRUPEQDMZw6nKk3oGEsqXSJW884EPxsSA0OiC6duD
	 sC8p/nDgcVj/A==
Date: Tue, 5 Mar 2024 09:03:44 -0600
From: Rob Herring <robh@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	nelson.costa@synopsys.com, hverkuil-cisco@xs4all.nl,
	hverkuil@xs4all.nl, mturquette@baylibre.com,
	krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
	sebastian.reichel@collabora.com, conor+dt@kernel.org,
	heiko@sntech.de, dmitry.osipenko@collabora.com,
	kernel@collabora.com, linux-kernel@vger.kernel.org,
	mchehab@kernel.org, p.zabel@pengutronix.de,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-media@vger.kernel.org, linux-arm@lists.infradead.org,
	jose.abreu@synopsys.com, shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com
Subject: Re: [PATCH v2 3/6] dt-bindings: media: Document HDMI RX Controller
Message-ID: <170965102379.3357317.10195104621246588504.robh@kernel.org>
References: <20240305123648.8847-1-shreeya.patel@collabora.com>
 <20240305123648.8847-4-shreeya.patel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305123648.8847-4-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_070349_781423_976EEC9B 
X-CRM114-Status: GOOD (  11.35  )
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


On Tue, 05 Mar 2024 18:06:45 +0530, Shreeya Patel wrote:
> Document bindings for the Synopsys DesignWare HDMI RX Controller.
> 
> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
> Changes in v2 :-
>   - Add a description for the hardware
>   - Rename resets, vo1 grf and HPD properties
>   - Add a proper description for grf and vo1-grf phandles
>   - Rename the HDMI Input node name to hdmi-receiver
>   - Improve the subject line
>   - Include gpio header file in example to fix dt_binding_check failure
> 
>  .../bindings/media/snps,dw-hdmi-rx.yaml       | 132 ++++++++++++++++++
>  1 file changed, 132 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
