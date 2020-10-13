Return-Path: <SRS0=Ew1P=DU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20F1EC433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 10:36:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9ED0220870
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 10:36:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="STAYKaYW";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rrHdIIkH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9ED0220870
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y0gnoe2HBsSgyA/RdRmR9rk1nZCpzzoIS8mQqwWzBT8=; b=STAYKaYWuL3bOCF6asWNZCbb+
	znpP3pi+905MWlgw001JQuFg3nYZS9WWOIAGWcImAmpzrDwgpXoIWHI7XKWcmT+XLal492lBKO+eX
	SUWxuc8GqOXwaTSa8lNXRO25vJeRkNQfXWt1X96DsD/AVbo6I10bM3eBiqbCbEYV6woWSeuKWPR+e
	q1NxGoBzqKhFDklz1qnBYT3dDMUU3NkxDMczvHbQ+9SGKTzJwE4XHVvSUQ9a4sAVs2CGS31Cgikcl
	0qxuPNwUonOh7em3WHAtFc0mjI08Y2yJrvEaASYwuSkQ70s7/tRrvI1qUGhw5CeuJ5JMT+Vs2fuju
	SmadeaWEA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSHfi-0004nV-Hl; Tue, 13 Oct 2020 10:36:46 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSHfb-0004jl-MO
 for linux-rockchip@lists.infradead.org; Tue, 13 Oct 2020 10:36:41 +0000
Received: by mail-wm1-x32b.google.com with SMTP id p15so20420580wmi.4
 for <linux-rockchip@lists.infradead.org>; Tue, 13 Oct 2020 03:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CiWCv3BMnudQFt/Kh0EA1mCHFgkrHwPIFYjOeIiiAgM=;
 b=rrHdIIkHJ4RWluKR74GDVBCXZ3fHa+2GckpSDJAnPQr3LIihHVRnyUP0B3Pyy3ZhiX
 8rSJA7CHd4bBwm+paLicw3yVKCUd7p47cqxTVZOMI8KQTToQQIRbcEkKYaCAJv5rCfEc
 1bgA/vc4KEWcOYZ4uNSULZ7vzptJAjV8I6Yt5FQdZdfVDCfUWFaaYLymlxMbvCLnuB5g
 k4Q1OxKAiRD5UMQFq/jNfia58Icqaqxjn9Zw637CxWxICuvMpdldIxOsG31VbTFTfcjx
 fcwjAwQt64YG5s9nbZkfQG7kDKS53uzrSfQJevNyaAgzQJP/OvC7fnfI1m0PztItBYpx
 0bKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CiWCv3BMnudQFt/Kh0EA1mCHFgkrHwPIFYjOeIiiAgM=;
 b=LEH5AIZeR2L2c7lx+ms6nPO+NOyWVx6EkZKCJHZct9Zh+QOJj/vTjLFZj6j3jayPQy
 mA//V6oMKNi29Mqf6Nr/Fg8D5Xqkpj+OTs29/HL74ypZNc4o3pcSkN22ZVefvq+zJFaq
 IdhKsZf+Nwk0HYn3sPO8pj5Hltl0o8nV8khdFmsJxatDVpg+pyu5KfftcZFGImE1rQ1t
 yzaibvwA2YKaO1smZo6TLafFoOE6n4n2yWbWEaskPEYgX19+kWJ9fGc/DtnFASEh5JFp
 J1Ql3BEopqhpfoxTSByyUgHgMQwxQYTNVU3rh1wHwC5BswCV6UMpmnFvXVFY2mWg4qSs
 37Sw==
X-Gm-Message-State: AOAM5332YiWTKxvstJqK/iBCopY92U91ArWGM5m7aC0em3vM5zfaEs5U
 oCydWiNy1SB9UyYZl+9U4jo6f9aU+ShYiQ==
X-Google-Smtp-Source: ABdhPJxiYcDKpnTqq5SWY21dPvFP7GNAu3f5Em/slUL6EOVBNEG9+t+pGtCNV4M0EgkRnYKNBcGB0w==
X-Received: by 2002:a1c:1905:: with SMTP id 5mr15466149wmz.32.1602585396171;
 Tue, 13 Oct 2020 03:36:36 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
 by smtp.googlemail.com with ESMTPSA id t6sm31809439wre.30.2020.10.13.03.36.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Oct 2020 03:36:35 -0700 (PDT)
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Cheng-Yi Chiang <cychiang@chromium.org>, linux-kernel@vger.kernel.org
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <7bdc0d63-27b1-f99e-c5f8-65f880733d16@linaro.org>
Date: Tue, 13 Oct 2020 11:36:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200914080619.4178587-3-cychiang@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_063639_761599_40AD8EEE 
X-CRM114-Status: GOOD (  15.08  )
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
Cc: Taniya Das <tdas@codeaurora.org>, alsa-devel@alsa-project.org,
 Banajit Goswami <bgoswami@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Rohit kumar <rohitkr@codeaurora.org>,
 Patrick Lai <plai@codeaurora.org>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Srinivasa Rao <srivasam@codeaurora.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, dianders@chromium.org,
 Takashi Iwai <tiwai@suse.com>, Mark Brown <broonie@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Cheng,

Sorry for such late review w.r.t compatibles,

On 14/09/2020 09:06, Cheng-Yi Chiang wrote:
> +---
> +$id:http://devicetree.org/schemas/sound/qcom,sc7180.yaml#
> +$schema:http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Technologies Inc. SC7180 ASoC sound card driver
> +
> +maintainers:
> +  - Rohit kumar<rohitkr@codeaurora.org>
> +  - Cheng-Yi Chiang<cychiang@chromium.org>
> +
> +description:
> +  This binding describes the SC7180 sound card which uses LPASS for audio.
> +
> +properties:
> +  compatible:
> +    const: qcom,sc7180-sndcard-rt5682-m98357-1mic

This information can come from the dai link description itself, why 
should compatible string have this information?

Can't we have better compatible string with actual board name or use the 
same compatible name as used by other boards?

Can you give us some details on the advantages of doing this way?

Or am I missing something?

AFAIU, you should add proper board name / model name to the compatible 
string rather than describe how its connected. Connection is already 
part of dai link definition.

On the other hand model property can include variant information.
This can also be used to set card long name which will help in UCM2.

The reason I had to bring this up is because the use-space (ucm in this 
case) will not be in a position to differentiate between different board 
variants to select correct mixer controls, so its going to be a pain!


Thanks,
srini

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
