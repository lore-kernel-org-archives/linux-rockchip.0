Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C06ACAC5AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 01:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEYnskrvVDTukkckPBd/XPiqdmTU88TvbPfSzJxgNsM=; b=JmvY1BlIMrpQqR
	SIvPDjD01p3ZF3C3k4ic/UNgSNWpLJAnQ8yMyVU1X4zkha0z0h2m2NOZ2cntR31du+/BvmxRzlY+q
	rvnnCeJdmNATNt9eAirb6IC1ugDwAd4fNruzm2/q0pU34gLiSq2zrEMDcH0xfr3w0KW6gZ2xecL5g
	6iPejD0rtPxXW3Bf9JB4rGXFR9DOehNqma8dKGbgTTfUXim/wICEtMLLmnqrWmG+zxGAZHWrpTmhd
	TNMWDIorXAihWSYVftyjgSHnmaz1T64DUnYZAGrrvlHEHxF44mVvuawC2unNQgk6ridxFnEfRcYcL
	aQW9rXDItQsGO+WmUSoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ral-0000000BykZ-07v2;
	Tue, 23 Sep 2025 01:13:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0raj-0000000Byjn-36dT
	for linux-rockchip@bombadil.infradead.org;
	Tue, 23 Sep 2025 01:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=sbAxWvwCeekeeUM4VZkkynWuaVVhVwplkcn9qevbOkU=; b=is2GaX+vSh5YWYezd/m07rG1MF
	lYDbeQrhH6CyWU7iIkbxBlbmxHGI5wTcBxoHGUroQexDuS7Gp4CuVEu+5ptC5oKfKy8Cv0soW+SWh
	KEcltajVvfkaymy9PPuHFdGWV0TUE4slgLTf+U03suqrj4v0YC52UIH11YJUQ10f+lFjbXMl7hGft
	T2AY2gZTU7B3ZIz20yI1duLd9+VS16JERM38BXwVSyo+S5vVOAn9WtJEDrlRk/InRgX3aJTvDmI+g
	w8aO5sBFjWJsKbMcDa0poVajKit/1q4pkWV05aP1oQ6SliDjsP8jmIQLFXeTPbfCLipteOGePvQJR
	LYjktn0A==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0raV-00000008Q7i-06Ys
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 01:13:11 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MINrF8022627
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 01:12:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sbAxWvwCeekeeUM4VZkkynWu
	aVVhVwplkcn9qevbOkU=; b=Y/oAUNwanp/8i/Q+2VUyIl68/RpkkET7mLx3+P4v
	ljJWg2/qAV1rTymX99LujG9ghxuiGxKTAdekIxKBy8L8K1KWfdO8wn1CcZvrWGwt
	a/I+r9PwxlfokT1t5hOa0UTGWfaoUMQLP0pwFy5CouAf4k+9MFfw7B2PFofQl2XK
	1CNh90y2zrTCQIgz9CkBiSerl+oBa1oI2rgy+EldK2cX6WLu40ZSD6t78MkU6zs/
	jf5tSPTeVf6WZm9V1RqwZDBBsR1ZW2wkMI0BZcPgp3nAwZJzEPgwxsMFzorBO4bL
	H6zExalqgFFFjjE4Un3U1OP4DQEDAh4yGLt+hmzi7xv34Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyaf45-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 01:12:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78e45d71f05so102223306d6.2
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 18:12:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589969; x=1759194769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sbAxWvwCeekeeUM4VZkkynWuaVVhVwplkcn9qevbOkU=;
        b=qp1OrsFtuzSZyeOp76+Taj1bQ5uSnK3S6LK1rAY4cY53Yq2JNYTotugFmwjFGzc7qg
         9oqduiingS2y6nBTiJ+Vh3WGrUDaQrl8WR50dlKq3VxL7yV9yHd4TNGsDpfs2bb0mm37
         bQ/xY1j0zjtLgvT1C0HxDfOdV+zYnKFSWE2s7BIlfLTXqIa4/f9a14eS0HQ91HYUZC+e
         CiTRuuc0vpJBmjJ6NMWYPUsFQ3tcI1T2U4OtGFBYjfLg0/IApOpxTduOjaXedWtBATHd
         L0m6VTr3Tjmng7IcKmwK68IQKwqliusY+THXjdIQTDjDSJnqovIzUYXNUT10IOzWEe6E
         uw8w==
X-Forwarded-Encrypted: i=1; AJvYcCUbls0HSCAm5nRPdtfNITLaYBhF0UMZBPRIioMJkqkGf0vhGUux07BQM51SFsnZYi6cc7SwrFBavsJxS8hFZg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyuOSiArPFaGsu2M1lYXB8CdISRGUuahfFBC9mwUh2X1YOnz9SC
	CSadrqjb2nI1rd5IrN9xJEv+EM3yRcRch4htSmTAmcHZWe+itpCKvxJhSYTBy7A49HuCYeEBY9t
	cCRqKEbPBMNAHWkzxem5Mi82pAtJm2xqRyeY+Ea6S0qndw2dw1Veq4w6HVOydn+8sKsa7fOfUYc
	c=
X-Gm-Gg: ASbGncuRoZY6QrdFW62HdZ8JPqFRkhLYkPQ1yu08HmleYTrl5Z5OKmjtHYsBOXVLffY
	9fTW0Vba1coXCsMx0Vxy0zG9fnQP5ecsvktQafG4ybtoZRjxBARwwUpgH7Cs0q3LwdXKwfay272
	Icw5NI9oOM/dKjqCx5yuDToDZAaYwkZ/TyESfExB9avcK4oxIL7f2TVeT3QwfRkLSTgFMuXM8jz
	8IVpttSx+pytzWqzmma1CL8HkMBY3z/UyeJysoRHOTTdUcctP4Qr4mVHjrYJSoMPsspE7/Hz579
	hLAdFNMkOWRMU8xbwge/hz4cjhp51TquXt4flj/b6sJaPSxUEgcSIpqOGBmfaWt+Gr+CTl2m4oy
	PozdAF0iU9fM5KGjk4MaX/t/3WrOU2xEOjTIXpasNJkYM65H1houO
X-Received: by 2002:a05:6214:4114:b0:784:bd2b:abbf with SMTP id 6a1803df08f44-7e705012f87mr8722776d6.24.1758589968757;
        Mon, 22 Sep 2025 18:12:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiSggGDRCsPU6/BaBSgPAIZ5+GwGUc8VAqZE9Y5TXkhtP0zAelL39yGsfxtACdIf0BhfPDXQ==
X-Received: by 2002:a05:6214:4114:b0:784:bd2b:abbf with SMTP id 6a1803df08f44-7e705012f87mr8722576d6.24.1758589968268;
        Mon, 22 Sep 2025 18:12:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57a8b1ed5c4sm2579538e87.138.2025.09.22.18.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 18:12:47 -0700 (PDT)
Date: Tue, 23 Sep 2025 04:12:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: rockchip: rk3399-typec-phy:
 Support mode-switch
Message-ID: <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250922012039.323-3-kernel@airkyi.com>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d1f412 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=s_Y808Q6mXF3CJQU57wA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: RIofrqYby3ApXDWCtVLQ1uoR2xdgaG9H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX4YBAEa8u79sp
 qfx9lff+hfaScJ4sg9o5zLtFnW0GlFuTxvKQR6jICrpoqWv/v2ITx+smQ7uGcbBlriebwislhMO
 Jl6eCdl2tODJzRy9RaNHmcnF4NDKTixKQkNu1sCZOBhI/KL05Df7HBnxP3gL3iuwoC0kN5vkHBS
 hJSHt4FtItz5tiW6pOljUCPodHHIiSOU2pgWGOj8uZcIUG7J2ZsLaIICgOrelm8T4rIRqT8l6E9
 Vl83JN4h0yGVkHY+K6KV074eZyp65xn5fHt2UmNGy4djNELI5uLLk3AZUccMvqifM484bnj+LWd
 d8UbJYuLOLMl5fTl9ZdeqaVhR5fu8w+rgWowuYPR8hEtyTp9gM+bK6o216NTJF5aJTJDZ/4Gt8p
 vRsG2XSC
X-Proofpoint-ORIG-GUID: RIofrqYby3ApXDWCtVLQ1uoR2xdgaG9H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_021259_957625_EE6C07D1 
X-CRM114-Status: GOOD (  24.54  )
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

On Mon, Sep 22, 2025 at 09:20:34AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The RK3399 SoC integrates two USB/DP combo PHYs, each of which
> supports software-configurable pin mapping and DisplayPort lane
> assignment. These capabilities enable the PHY itself to handle both
> mode switching and orientation switching, based on the Type-C plug
> orientation and USB PD negotiation results.
> 
> While an external Type-C controller is still required to detect cable
> attachment and report USB PD events, the actual mode and orientation
> switching is performed internally by the PHY through software
> configuration. This allows the PHY to act as a Type-C multiplexer for
> both data role and DP altmode configuration.
> 
> To reflect this hardware design, this patch introduces a new
> "mode-switch" property for the dp-port node in the device tree bindings.
> This property indicates that the connected PHY is capable of handling
> Type-C mode switching itself.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Changes in v4:
> - Remove "|" in description.
> 
> Changes in v3:
> - Add more descriptions to clarify the role of the PHY in switching.
> 
> Changes in v2:
> - Reuse dp-port/usb3-port in rk3399-typec-phy binding.
> 
>  .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml  | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> index 91c011f68cd0..83ebcde096ea 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> @@ -51,6 +51,12 @@ properties:
>        '#phy-cells':
>          const: 0
>  
> +      mode-switch:

Having the mode-switch here is a bit strange. I think the whole PHY
device should be an orientation-switch and mode-switch. Otherwise it
feels weird to me.

> +        description:
> +          Indicates the PHY can handle altmode switching. In this case,
> +          requires an external USB Type-C controller to report USB PD message.
> +        type: boolean
> +
>        port:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: Connection to USB Type-C connector
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
