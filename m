Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D3EEC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 22:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Syfg0Kli7qqZFE+k49CgMGVnzq5Wbyg0pxT/o4HrVEM=; b=EVqBhP2qOCpCnZ
	x20XfP3WY5h+wYm/278rjHdm/DGcwiavGqhuQIbgce3LkL6BpFXgjd+cf13Kw6Wxf0M0josKE1SA5
	04I1J1XhAwmfPVKGwZE9bk0mb2esRkE7sydeoCywvmNZ0PrKNPtXC4Uljn6WtzkUR2gEPb+E7O2Dw
	1pmaHS0doIG7wvxwnr0PtNrM2jf6wd/Wr1T/Wu/GNjh79b0coj16b/xLBkRFQNLMkXdbqmqrJd5Ln
	qwy+Zgd9MRf7QDZKNFjFNloRxLGPp53Lri4pYmEqW3lxtqlYr6HcQVy05qJRUlEPKfl+7UTi/MD8O
	uDghQ+A3kB2YFgJFYM6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRLYD-001lVf-Ga; Mon, 07 Mar 2022 22:09:57 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRLUP-001jcq-4B; Mon, 07 Mar 2022 22:06:02 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 x8-20020a9d6288000000b005b22c373759so3998992otk.8; 
 Mon, 07 Mar 2022 14:06:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=eN8whrQFP0dYkqOwrVQzZHnY72AuM1tzrD2ytbHKbko=;
 b=S18z7qlgQO69zIuPyZWnn/PylVIZspAfrZJx98ZfXhx12ng5TnvktfEMnebhwGf+xK
 f6/Z2mHUhmWkRRiLMbxpkzSMGn3SVLZ8d08mAKdZLpY2Q3Ivq6JlI8lsJGgu26jjqc/c
 v8Xj3qwula22GeuQ3AG1j3dVUiGvxiHHghwDFZp4nLgqgygkNBfBewtUGMUnY8tCWdNj
 KEyPT/lolGKCnoQ2GGexY9kG7Ts0/6gu1pCFSc6xAS9U3RE+4aLwlaxZvNlCeFmy30pv
 CadcIbjH9vJIMk+hrg59Jcnuydb28FrgFddLdRGW9rSrUV37KTPPatWcX3Xe0KyQ7Sgg
 fmZA==
X-Gm-Message-State: AOAM530LWmGv28TlbHcOqgGUhNyBAR2Ioc0WFtU82je2211B9sqYhdZF
 TK8Vf0va+UxUkIt/RpplaWa7MEkUbw==
X-Google-Smtp-Source: ABdhPJzaxyPUrJTHCdqLA7RrZr2+t3jQsud03nitRdse3TmUb7Vuh3JuOoIRO1whdI4e1Ug360NpaA==
X-Received: by 2002:a05:6830:16ca:b0:5af:6a75:c7b1 with SMTP id
 l10-20020a05683016ca00b005af6a75c7b1mr6716291otr.292.1646690760148; 
 Mon, 07 Mar 2022 14:06:00 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 az10-20020a056808164a00b002d9c98e551bsm2320172oib.36.2022.03.07.14.05.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 14:05:59 -0800 (PST)
Received: (nullmailer pid 3324008 invoked by uid 1000);
 Mon, 07 Mar 2022 22:05:58 -0000
Date: Mon, 7 Mar 2022 16:05:58 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: Aw: Re: Re: [PATCH v5 1/5] dt-bindings: ata: ahci-platform:
 Convert DT bindings to yaml
Message-ID: <YiaBxlBkpav/7mug@robh.at.kernel.org>
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-2-linux@fw-web.de>
 <a2839b00-d195-131f-b2a7-d2f030a5bd95@canonical.com>
 <trinity-9ef9e0d3-e70c-45d9-bdd8-e43d1c89a8c9-1646560070497@3c-app-gmx-bs46>
 <b8553651-3cd0-845c-efbf-d2341d5506b3@canonical.com>
 <trinity-d42352e1-d778-40dd-9464-90a145653f74-1646563315484@3c-app-gmx-bs46>
 <18f4dc19-b8a4-015e-48c8-923326cc7932@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18f4dc19-b8a4-015e-48c8-923326cc7932@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_140601_214893_0FD27E55 
X-CRM114-Status: GOOD (  27.93  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Mar 06, 2022 at 12:15:39PM +0100, Krzysztof Kozlowski wrote:
> On 06/03/2022 11:41, Frank Wunderlich wrote:
> >> Gesendet: Sonntag, 06. M=E4rz 2022 um 11:27 Uhr
> >> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>
> >>>     add compatibles used together with generic-ahci
> >>>       - marvell,berlin2-ahci
> >>
> >> This is fine, just mention it in commit msg.
> >>
> >>>       - qcom,apq8064-ahci
> >>>       - qcom,ipq806x-ahci
> >>
> >> These you need to consult with qcom-sata.txt. This could be a following
> >> commit which will integrate qcom-sata.txt and remove it.
> > =

> > this depends on Robs opinion
> =

> Then maybe precise the question for Rob...

I would leave qcom separate, but the warnings should be fixed. For that =

you need a custom 'select' schema that lists everything but =

'generic-ahci'. Adding the berlin compatible looks right.

> >> Either you have
> >> binding document for all devices or you create a common part, like for=
 UFS:
> >> https://lore.kernel.org/linux-devicetree/20220222145854.358646-1-krzys=
ztof.kozlowski@canonical.com/
> >> https://github.com/krzk/linux/commits/n/dt-bindings-ufs-v2
> >>
> >> The choice depends more or less on complexity of bindings, IOW, how big
> >> and complicated bindings would be if you combine everything to one YAM=
L.
> >>
> >> In the case of UFS, the devices differ - by clocks, resets, phys and
> >> sometimes supplies. Therefore it easier to have one common shared part
> >> and several device bindings.
> >>
> >> AHCI looks more consistent - except that Qualcomm - so maybe better to
> >> have one document.
> >>
> >>>     increase reg-count to 2 (used in omap5-l4.dtsi)
> >>>     increase clock-count to 5 (used in qcom-apq8064.dtsi)
> >>
> >> This would need allOf+if.
> > =

> > if i get ok from rob i add only the berlin-compatible and skip the =

> > qcom+reg/clock-change in the first applied version. Adding the =

> > allOf/if (and making it right) will only delay the sata-binding/dts-cha=
nge.
> =

> I don't get what is the problem with delaying this patch for the time
> needed to make the bindings correct? Especially that alternative is to
> add bindings document which soon will need to be modified, e.g. split
> into common part. Is there a particular hurry with these bindings
> conversion?

Qcom doesn't use sata-port nodes, so I don't think there is anything to =

share. And if it did, that's already in sata-common.yaml.

Rob


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
