Return-Path: <SRS0=to3J=GZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18A41C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jan 2021 14:02:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CFBEE239D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jan 2021 14:02:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CFBEE239D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dqiuv1o1YYKDjZ8u75f2/82T3dFSzBUa1cWCouYRzpM=; b=cc8Xy4jdt8xeo6P8LqNptulbD
	LhKOmqdhnq9LK6Y+q3j05+lC1asH/5iaq58ChgpmcoVTFyWX0/OBmWMrtPyJNrYE12pnAe+jY3T26
	rn1igxjt2fqrvBoX9plJl7H+HUKQf8mnLh4YStyOMNMC4xHsdAgGzEgb2e5iFn/vjDRAJawt/EmW1
	iO9+nFlZFmOCV2VpvpgaSJI6b6xGyYfNRfNz2nuU/cwZ60brL1NSCkUGjtt7aQYgk4B3mpX2VQ5Q0
	RRd8P3+dFiizU4XxbRFhNuSORVPIoqPytqZnwk7KZIvhwF0JUQtp3Ur/qfzNFoDgIpDwMWcuD3cH+
	Ig7vusYaw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2x1R-0002xS-NE; Fri, 22 Jan 2021 14:02:45 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2x1P-0002vd-Vn
 for linux-rockchip@lists.infradead.org; Fri, 22 Jan 2021 14:02:44 +0000
Received: by mail-ed1-x52f.google.com with SMTP id d22so6710911edy.1
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Jan 2021 06:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rJTtOq8f3FlXKNS2xc6ac2je/Zvq93yXj8Whnd3Or3M=;
 b=X3g4hnUQFKT/NU/h5d8/fUqMKlC+/2uBgHiH2GmXlUtOrwHENTKO5h6e0oyvpL3Z0w
 g/HkwRCgYa6BNDwoSfTDzK41Kjouh1XUPZqh7uWnWverY+V6dyEynL/86jIgL3cefFJ6
 hgk9awlKyZ7+09UHDJHzVLKn5B23FCQhFNYyLhsphUqwLmgKXNfY+RPxSbQ6GNard1nV
 ddc7t2WPT9vo/7HO2SII0XEl7cjLl7FFN1UXBCAKCxOM7LDnDCgb9x3d/OCYayP/3Odw
 mBP7CN0KJ4SHjIYqPB05hUDof2976vr9DGtEAaxfo3RofWnbnCnXiTR3+IBa2Jwnts+R
 hr1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rJTtOq8f3FlXKNS2xc6ac2je/Zvq93yXj8Whnd3Or3M=;
 b=dTqCdCdXfs5m8Ph7eiwfsfIn7xIHTxwMgb6J8gnPhdbvwEGwnp1uyelPkM2gFxjZSA
 zKVcMkv/hoX+tWo1RXIaCpdIcJaZ3iKgvdx/sCyEMi89TA7Sdgx1hKV+hQ4sYqhFnr9d
 OTTB7qeK8YS9U4VRPDeJh5df0hwC83X9hQQNcf0o+awpydU3TTTUguStZLrPEfU0nO5D
 ELEQneUlpzMnztMc+TFUvMCJX9oQaPl3d4BSHUhdo4laCL4wUP2ynI/10flmqoAaaIAb
 ayAmYHwodqEcS1BDPzPkUJgZT5PGVI2FKYO4ZfcFUbqwsHVHlQSWBrJsTN+486enBpKO
 XrPg==
X-Gm-Message-State: AOAM5309zs4vTUjfoThWPLgbgaAt4PU/W7TwDoCq978pmIEuELOcoH2/
 wJHmEsZKg6J1rEoZAtNTulCiRkvtaw8=
X-Google-Smtp-Source: ABdhPJys+MBeoVfqapSNF84elvf+M7qMEaeBOGGFAU/c93EVbQWEqFFcrrGZaVn999BHQajxg1OGWg==
X-Received: by 2002:a50:d6dc:: with SMTP id l28mr3383739edj.105.1611324160810; 
 Fri, 22 Jan 2021 06:02:40 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g2sm4464232ejk.108.2021.01.22.06.02.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Jan 2021 06:02:40 -0800 (PST)
Subject: Re: [PATCH v2 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: xxm <xxm@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210120101554.241029-1-xxm@rock-chips.com>
 <3af70037-c05d-1759-2bae-41db1e8e2768@gmail.com>
 <31b54a67-eb1e-fa57-fff7-a0c867f27cc6@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9c560852-8ebf-61a6-906b-9cc8ced8bed0@gmail.com>
Date: Fri, 22 Jan 2021 15:02:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <31b54a67-eb1e-fa57-fff7-a0c867f27cc6@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210122_090244_080409_1B1FE82A 
X-CRM114-Status: GOOD (  13.68  )
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
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Simon,

A few comments, have a look if it is useful or that you disagree.

/////

The format of ranges in your pcie node in rk3568.dtsi and your example
is wrong!

  ranges:
    oneOf:
      - $ref: "/schemas/types.yaml#/definitions/flag"
      - minItems: 1
        maxItems: 32    # Should be enough
        items:
          minItems: 5
          maxItems: 7
          additionalItems: true
          items:
            - enum:
                - 0x01000000
                - 0x02000000
                - 0x03000000
                - 0x42000000
                - 0x43000000
                - 0x81000000
                - 0x82000000
                - 0x83000000
                - 0xc2000000
                - 0xc3000000

The array size is 3: ==> maxItems: 3
in a array a range of 5 to 7 u64 is expected.
They must start with one of the enums above!
yaml dt_check expects <> around every array member!

Old example:

ranges = <0x00000800 0x0 0x80000000 0x3 0x80000000 0x0 0x800000

0x00000800 is not in the list of above, please recheck!

          0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000
          0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;

New example:
FICTION example with correct first element, but maybe NOT good for
Rockchip pcie!

ranges = <0x81000000 0x0 0x80000000 0x3 0x80000000 0x0 0x800000>,
         <0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000>,
         <0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;
	
Change this also in rk3568.dtsi!

/////

rockchip_add_pcie_port()

For FTRACE filters it is needed that all functions start with the same
function prefix.

Maybe use:
rockchip_pcie_add_port()

/////

The function prefix of pcie-dw-rockchip.c is identical with functions in
pcie-rockchip-host.c
Is that OK for the maintainers?

/////

+static struct platform_driver rockchip_pcie_driver = {
+	.driver = {
+		.name	= "rk-pcie",

Maybe change to:

+		.name	= "rockchip-dw-pcie",

This name shows up in the kernel log.
Could you keep it in line with other Rockchip names, so we can filter
more easy?

dmesg | grep rockchip

rockchip-vop
rochchip-drm
etc.

+		.of_match_table = rockchip_pcie_of_match,
+		.suppress_bind_attrs = true,
+	},
+	.probe = rockchip_pcie_probe,
+};

/////

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
