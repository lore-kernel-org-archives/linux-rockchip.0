Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AB2DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 16:16:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1499B61BE1
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 16:16:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1499B61BE1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apLzSNPE+GxCWdNnqf892mKL3KfRcOFlX1b8T0mHsuI=; b=d+0Dpv850zOaso
	PmtkNDRmpFhkIbRGniweZCfTPTSZ9hm7rvb/W1UK7ccLUpxV9cr3ZLDbRGGqCh9uPe/irHIydn0rP
	mwbcc4gpQqwW7mSlHKKBTHSX2P3ykOHGT59KKKbqiw4U2lmdAOiUQXTtqBPPyC4IwXFn3TmSis08Z
	oLvoiK2qKuQFqUC9e+/boxH0pGU2jShw6BjCkDIo6xwhXJJzHA43sPE8cF8DYsMrpLXnwL8s+BkGj
	NQu7RktZdjS9H9QqSS5rs2OOqgOJv3EVB5Jv9Cc1SEE8uRG80v1sAsDqdYJCqQguVxzeGWicwwXAp
	aw8LwTKrVdpEKt43IYyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnNbd-005hgE-Hr; Wed, 17 Nov 2021 16:16:17 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnNW1-005fTn-FG; Wed, 17 Nov 2021 16:10:31 +0000
Received: by mail-oi1-f175.google.com with SMTP id q25so7599787oiw.0;
 Wed, 17 Nov 2021 08:10:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=yK9vNOeDGETW73QHrV4Z7zFhBBcsvZuPNoOhylQULKY=;
 b=gVDl+brkYoC0G14iQYVdCg/3H/vJ5QhrgDPW2qzZ4hryv/GuEuREXWSL2wY62s2UMg
 /iSmFiqEkPNsVFw6uUkCjiPLS2nf6oFZ0cHucKDS+XjjuKosEsc+ueXVkRHwNhn6MNm9
 x2iIOWXDe0iCrpqhObtnmDuc2pOjvJY58m+/0QuRkRPESF9OnVwfOvi6gTUyKcXZhfG7
 Frqo8cvNVUppv1NSjecjDLlX+fEmfhZ2KpX8w0BMDkcXtka19+i+bsJ2cUv2k1/ZH9K3
 3McvWFtUnvjwwIInr0jHJJULhrSbGutDktknrqAMiwjKjNkjomnW9YY7oBVT3CUoOFf3
 5Qeg==
X-Gm-Message-State: AOAM531l0kVgkdjDoND08seDMbl3kR21Bxdczx5cAsrHJRr2tGvrkUnI
 P3u+xXQD8XqJSQ5yDbzUXw==
X-Google-Smtp-Source: ABdhPJyrvKEPCkhIoZwSBkshVFLBitYyWTpayRf+S+fvZB0vU2SS86Fg8Y3yEhzBvppiypC6OhYajA==
X-Received: by 2002:a05:6808:a08:: with SMTP id
 n8mr770523oij.148.1637165427341; 
 Wed, 17 Nov 2021 08:10:27 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id w4sm47701oiv.37.2021.11.17.08.10.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Nov 2021 08:10:26 -0800 (PST)
Received: (nullmailer pid 2614352 invoked by uid 1000);
 Wed, 17 Nov 2021 16:10:25 -0000
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: devicetree@vger.kernel.org,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, kernel@pengutronix.de,
 dri-devel@lists.freedesktop.org
In-Reply-To: <20211117143347.314294-8-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-8-s.hauer@pengutronix.de>
Subject: Re: [PATCH 07/12] dt-bindings: display: rockchip: Add binding for VOP2
Date: Wed, 17 Nov 2021 10:10:25 -0600
Message-Id: <1637165425.821111.2614351.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_081029_606120_053DDA62 
X-CRM114-Status: GOOD (  13.40  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 17 Nov 2021 15:33:42 +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 114 ++++++++++++++++++
>  1 file changed, 114 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: example-0: vop@fe040000:reg:0: [0, 4261675008, 0, 12288] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: example-0: vop@fe040000:reg:1: [0, 4261691392, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1556199

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
