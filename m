Return-Path: <SRS0=QPul=DX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9C90C433DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 16:04:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 33AB420866
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 16:04:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Rjg3+sbe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 33AB420866
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jydSfDDncCTYLup0ysCtOKtduOMGn61N79MC5Kbthmk=; b=Rjg3+sbepcIFTS9g6oYfA3IQb
	ZkzogtOC4bbCAuB5jHLdPjC0PsjeEojTEtBdGwY4zDs6nNYJBwdaYMBV8g9sEdqPt3uKtsWD3Yepv
	LnapYS/4iyD9SRcA0BMEP1Xx3tal+1gtxIpGkmE1WL4WuIspfY3I2pSk9bVeFtFyYeJmPIzVq5GuK
	haP0/xQHuZyWkFyo+gO44meWX8PB4NDMiSWCOtVHjIgg7mX8zAyxDudLqN/T5GpJovYFQC2uPTg02
	fHn1g5IeRL2l2lUUTsoaDQIU4TUtoqqNedKT9B3qt3Yk8mjXK9lDdrjhGNn4PyAFZfvg69sN7fdLb
	GzxZ41Vzg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kTSDo-00045f-PT; Fri, 16 Oct 2020 16:04:48 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTSDj-00044H-Nc; Fri, 16 Oct 2020 16:04:44 +0000
Received: by mail-ot1-f67.google.com with SMTP id m22so2869099ots.4;
 Fri, 16 Oct 2020 09:04:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=B5r1iVyK3g5LOaEPbQH7PWrVHl8ge6O5axWBuh2PZeE=;
 b=EzIgXmeUfI1qS4eTxygZTkl/sldrcusuEf+uqCBIMbKICic0CJm9Gw2YoiGEfKUZ07
 nFRymBjzZyFXSOt5HCANS/MNrX3FHJYtNO49mGK3vnBPeOcOB9yUWasDr6OdA5NmG6FF
 2nsBDu3Z8k6z3N3dCBCVf/MLaC5sXubR+b6IbWfatPpENLWURxZErPTY2LOyfhtllSw7
 vDrV2jIyaNVS9mYtDR0FdtG3gwf15t9ihReoLvn9aUl/7efNLqYTOPPPhpqmOzoIvcJK
 gBmFr4UzH+1zMU/lAIsn5971DmIrGlBeEw8n5H4jT6SH0SEdL7xCyT8BIJG6Qk0anw4h
 WW5A==
X-Gm-Message-State: AOAM533en/VWBMLn0Bg3K53KewVb0mPQfOV/4qjqLMvrwTJpUEWogNPi
 jbXjbmt45bi6Csv54Q1aBG/2v5zg4w==
X-Google-Smtp-Source: ABdhPJws7R2VvBCs0QwPLkKNqMNgdPLcfuPj1pTN4MciCqactZNQnAW0FdCyTT6OPwznRy+xGlaMOg==
X-Received: by 2002:a9d:7850:: with SMTP id c16mr3017265otm.342.1602864278409; 
 Fri, 16 Oct 2020 09:04:38 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k6sm1087596otp.33.2020.10.16.09.04.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 09:04:37 -0700 (PDT)
Received: (nullmailer pid 1495855 invoked by uid 1000);
 Fri, 16 Oct 2020 16:04:37 -0000
Date: Fri, 16 Oct 2020 11:04:37 -0500
From: Rob Herring <robh@kernel.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v4] dt-bindings: power: rockchip: Convert to json-schema
Message-ID: <20201016160437.GB1494813@bogus>
References: <20201015101944.407487-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015101944.407487-1-enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201016_120443_790887_30D32ACA 
X-CRM114-Status: GOOD (  20.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 dianders@chromium.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 15 Oct 2020 12:19:44 +0200, Enric Balletbo i Serra wrote:
> Convert the soc/rockchip/power_domain.txt binding document to json-schema
> and move to the power bindings directory.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> Rob, I didn't add a number of clocks neither a number of pm_qos because will
> be a finger in the air number. If you still want I add it, I can add a
> number based on the actual users of this binding but no guarantee that
> we don't need to change that number in the future.
> 
> Changes in v4:
> - Use hex for unit-addresses.
> - Use space between compatibles in the example.
> - Define child nodes for nested power domains even are duplicated but
>   more clear that adding a regex scaped to be a valid URI.
> 
> Changes in v3:
> - Fixed tab errors found by bot
> 
> Changes in v2:
> - Fixed a warning that says that 'syscon' should not be used alone.
> - Use patternProperties to define a new level for power-domains.
> - Add const values for power-domain-cells, address-cells, etc.
> 
>  .../power/rockchip,power-controller.yaml      | 283 ++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt    | 136 ---------
>  2 files changed, 283 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> 


My bot found errors running 'make dt_binding_check' on your patch:

./Documentation/devicetree/bindings/power/rockchip,power-controller.yaml:61:13: [warning] wrong indentation: expected 10 but found 12 (indentation)
./Documentation/devicetree/bindings/power/rockchip,power-controller.yaml:106:17: [warning] wrong indentation: expected 14 but found 16 (indentation)
./Documentation/devicetree/bindings/power/rockchip,power-controller.yaml:138:21: [warning] wrong indentation: expected 18 but found 20 (indentation)


See https://patchwork.ozlabs.org/patch/1382558

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
