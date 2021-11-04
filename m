Return-Path: <SRS0=Uz4W=PX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D7A9C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Nov 2021 16:13:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 409E46113B
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Nov 2021 16:13:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 409E46113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hV5iFcPBBk+y+bxIJJXwKL7sUDlYlhlAf+7Fi8Hn1bA=; b=HsJMhcTdZYHGxc
	DHEd1ZeqVukNh9jRiYw0NVJq0AIOjDmSC+3eW0tjgWIgtl1PGB68Dof/IY0JBl4j0r4fQPoW1yXrf
	FuU8yD1mcz3fyQ0AbjdCiIFBTpoPyOpVi7F2Y7xOeV5VoLPgyfq2T1k1FQjbYeio+2mi6dUNfqAci
	uu4S83+LEf0ZvRmGkH1R/onYVRKU0ogZl8hApJs+JBrcY6Wv/UYmGuI6v9Na6Tly4Jrc+e8Tix2ih
	BPhfT5RS2aWsS4fajDNn1FDbchYHWdJjZF5uiWAYUoBVj90f7sm2dlg4+qjx9hqDdmvc+2hvxowc1
	vq64bM0znmwUd1fKaarw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mifMT-009NrI-5O; Thu, 04 Nov 2021 16:13:09 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mifMG-009NnX-Vk; Thu, 04 Nov 2021 16:12:58 +0000
Received: by mail-oi1-f178.google.com with SMTP id x70so10040273oix.6;
 Thu, 04 Nov 2021 09:12:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=F8S7posVfJa10aMcTqnPvT5yLO9Zkvy1OBcQITEzqpY=;
 b=Oc4f330AcDkPvlJwt3mKOgI1SC9wDXcvcbDOfybBYo7Fb9QPet5ev9uTulfleLhoPf
 mb7AIbfbDYuoWCxi3AQq+Sw8etkamy320qHVOmgaRE+8MJUBkDF514S72gMuyWgCMFIs
 CuSAfrS0V/lr//F1ylVttoQMOn7MQRRJnHxXHlacVD5OYUgDmQt6vbOd67D4iMPTBIz2
 q7bSa3/gtcPYFVKZbVa2D9C3lFhepLEwVF5BmIpyked4TP2cS3CpsqDwbRpxu9BNVICg
 xV79Zc6lEghIhSB0a+TkyfEceGJBLOtgQZ3yXqcvzKASZxTnKETi6zYStktdOyUhH2hQ
 69SA==
X-Gm-Message-State: AOAM530biDKQHdrkI/saZ04DJjHBd4bPIu6BroWlh7+qAC+6hsa0YO03
 +8OcDIJvVpt0BnVtCVLHww==
X-Google-Smtp-Source: ABdhPJwqUVX+YeETjwLQl3NQ7K+px0unN5KE5rEKkmpNng5TJE6UFg/nAQ1maNMUHdZGGJPLMsa8Bg==
X-Received: by 2002:aca:210d:: with SMTP id 13mr1112566oiz.32.1636042375635;
 Thu, 04 Nov 2021 09:12:55 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id c18sm1730840ots.64.2021.11.04.09.12.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 09:12:54 -0700 (PDT)
Received: (nullmailer pid 3458347 invoked by uid 1000);
 Thu, 04 Nov 2021 16:12:52 -0000
From: Rob Herring <robh@kernel.org>
To: Akash Gajjar <gajjar04akash@gmail.com>
Cc: Liang Chen <cl@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, Chen-Yu Tsai <wenst@chromium.org>,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Levin Du <djw@t-chip.com.cn>, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Alex Bee <knaerzche@gmail.com>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20211104075234.8020-1-gajjar04akash@gmail.com>
References: <20211104075234.8020-1-gajjar04akash@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add rock pi s dts support
Date: Thu, 04 Nov 2021 11:12:52 -0500
Message-Id: <1636042372.246110.3458346.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211104_091257_051058_931EDC67 
X-CRM114-Status: GOOD (  15.95  )
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

On Thu, 04 Nov 2021 13:22:24 +0530, Akash Gajjar wrote:
> Rock pi s is RK3308 SBC from radxa. Rock pi s has a,
> - 256MB/512MB DDR3 RAM
> - micro sd, sd nand flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - onboard RTL8723DS 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - 26-pin expansion header
> - USB2.0 Type-A HOST x1
> - USB Type-C DC 5V Power Supply
> - 2 LEDS, 2 Keys
> 
> This patch enables
> - console on UART-2
> - nand flash
> - sd card
> - 100Mbps ethernet
> - USB2.0
> 
> Signed-off-by: Akash Gajjar <gajjar04akash@gmail.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 208 ++++++++++++++++++
>  3 files changed, 214 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/rockchip.yaml:473:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/arm/rockchip.example.dts'
Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 45, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 434, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 119, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 773, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 850, in _ruamel_yaml.CParser._compose_sequence_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 731, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.scanner.ScannerError: while scanning a plain scalar
  in "<unicode string>", line 472, column 22
found a tab character that violates indentation
  in "<unicode string>", line 473, column 1
make[1]: *** [Documentation/devicetree/bindings/Makefile:20: Documentation/devicetree/bindings/arm/rockchip.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/arm/rockchip.yaml:  while scanning a plain scalar
  in "<unicode string>", line 472, column 22
found a tab character that violates indentation
  in "<unicode string>", line 473, column 1
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/rockchip.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/arm/rockchip.yaml
make: *** [Makefile:1441: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1550787

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
