Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00E59C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 08:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQck2e0zyzt5obpnxDHZaA7TWpQali0H1aZbANMqBkw=; b=eGC79tMe+pshUY
	JB5W8AwyO9smqp7eyZDt5THix74CzryliMVk39iQ8gUmNR9cEYHzgNygIwS52eHE3/9dKmQ8lPpQH
	DK/3rSHdwtClIuL/Z1Q/+yUWfokM4+brGg95IovA+8ZwjBBCoX0oQekwQL6qjAsiXGVQFLCcaZatW
	VbRzimgvekFE+DeyPSZMrR1uiOVnr+QyUUJzyEMY1aiqJ7sTY9GeD39REuxwvSQV1kSb2Ul3jNuqR
	GYuiqFZ94QGwqpjh3TjPfUzbOUCag58Ifl0fu0+eU4pj6EpTPtYr6Jw7JNjUkdQlAPeKL098jco63
	yGUS2FktiO0dWOB33Dxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNpuI-000000003FX-2RXg;
	Sun, 30 Jun 2024 08:27:34 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNpuF-000000003Eq-0oEJ;
	Sun, 30 Jun 2024 08:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1719736014; x=1720340814; i=wahrenst@gmx.net;
	bh=nsatQbMwWazHWjCGtPZLKlMFGJm60bL4DCX/RYQYfww=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=GSCRgTX4Am+7nOm4ncdp9J/Y7GRlnUM6LXDeq2RU2gUd3caDn7gWMgXTWxb/+TD4
	 eUkrjpC8L1ttI2AFHTIUUgvoBcfIYlJWfFJwu5Jj/4xlph3YT5iou9i5p6/8IRRpJ
	 /3ct08Z0BKZz/nI7HIJoZZsQ/z+n1u/5T4JvMcaTourJFhO8jglwFhjGhqiNg/kaZ
	 ma+gtHhwgcuTsxrqO+8he4W9MUaJmR1Znq+5SPOL3sRCWA0ta7dA7Dc5+ZwnuNVVf
	 FOTR9pRkBnPaSu6+mxPHokRI1YXLLeq+dK/L/HHdg8UbLwTBTpGUrUtKwjsnT6BQ6
	 GEq6/jBpaXlRggxh2w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.127] ([37.4.248.43]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MVeI8-1spQu947xU-00UhCM; Sun, 30
 Jun 2024 10:26:54 +0200
Message-ID: <c34d4c60-da28-40e9-b86e-41bf8cd71b24@gmx.net>
Date: Sun, 30 Jun 2024 10:26:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description for AP6275P Wi-Fi device
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
References: <20240630073605.2164346-1-jacobe.zang@wesion.com>
 <20240630073605.2164346-3-jacobe.zang@wesion.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <20240630073605.2164346-3-jacobe.zang@wesion.com>
X-Provags-ID: V03:K1:UsRdSvMT7LvqkBgf2MMlJCt+oUY1cPrdOCam4+DWocwBgRUGkOR
 umY/KuFxXQuMBWvZsS5NdefexWZFw8/pt+cTQv67MH9xqR/BXA+SUnkmyjTihU3ZnaxAQIe
 aCIskfUAQYpGN3YLc84ogq6vAiA5whIEv1r43hSsgZzzQPr7czy5M+Y79dJ7/nBr4MXtCuw
 of0ETPM/bJYTY/pLEoljg==
UI-OutboundReport: notjunk:1;M01:P0:jLcFPFMzJLY=;HtTlBMAMOmLTFxw4iUjwe9NTF5C
 pyl7n3ID/f82VtW1rUN6slUucWjkEp3ojdLF0Tl276NFePfzUUzXnkI+oPZdGXLBQQ7lmL7gM
 ndLqvl15lozGNKqwHwcJKBU+9quLwf49NtLNKe01o/hnXOfyy8wtf7P+Eo7r/+4rdf5RCqMZL
 Po55mXOZ2dvLzO+ibimw5RIG4faUhdjYPyty8dQsGBuzKWG9Usz+QHWkTlrBPD79cJl+GSpyp
 5WQpZ/9cHqJQxxjaDZnMUYR5ihbk9Nsec0J6PeEVWSzd+UM4CACmzMkr6gTfCPnLNbpaFtZCS
 e6y8D6ahAahN12n7dyV5olua2EOuVsPEPpL0AmwvqXAxx/kb9T4ZWkjtE+IQHM0d5rYcbTvL+
 0mfd54YDYQafj7H+6EFdEDorGu9ESfLu6+Hyl/SerpmfGpLJIUl9hdmmOfLxInobmjSnpurEX
 Nbj75UWBWW4uEJfQiL0IsEPjv99wnps4yFqfvvF0pfdO2KYOZ6fsqKP29hadr03UWE+THx3Um
 /52APqAAxlJmzt07J/7tZ76xWMmXb7tasF7/1jvmKXtMAY0Afm8owjkw/do5qeHJI3IIX0BsY
 SmTCSYH1W7ZrIe/UQNEorlc6VNzQMVvZkVreOaYazC7PaqHDZQtZdnaezAhaKBy/4d2ZMRFWR
 x9OdcWCvFoPXGhIOI61Cft7K7eVMu7to5TMv1RA9nWWJyvAeUAFEOAF1moyqU6GFy/iWcszJx
 MTyAzcm4PQaz3gtTE7LzWy5X7bQvBQu0Vme/Omani5jxD0Xi1ufS85Yt2wjJbmRyVHbW6l8KO
 uduLZSY3/mOE8pffpLrVFdp2NOb9m1zPOmNnBBM/dLN+w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_012731_623404_8F22CF8B 
X-CRM114-Status: GOOD (  11.22  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jacobe,

Am 30.06.24 um 09:36 schrieb Jacobe Zang:
> Add clocks and clock-names for brcm4329-fmac.
thanks for taking care of this. According to CYW43455 datasheet which is
also covered by this binding, there are more clocks in the hardware
design, so i suggest to reword subject and commit message that this
patch only adds the low power clock.
>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>   .../bindings/net/wireless/brcm,bcm4329-fmac.yaml          | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> index 2c2093c77ec9a..f542b60e44dc4 100644
> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> @@ -122,6 +122,14 @@ properties:
>         NVRAM. This would normally be filled in by the bootloader from platform
>         configuration data.
>
> +  clocks:
> +    items:
> +      - description: Wi-Fi RTC clock
> +
> +  clock-names:
> +    items:
> +      - const: lpo
> +
>   required:
>     - compatible
>     - reg


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
