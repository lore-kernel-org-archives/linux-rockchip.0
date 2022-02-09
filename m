Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BB90C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2mw+w+3F32Vn7tJOOdLaq818ky330DC419FJiR8WN4=; b=R4kDKrZhae46MR
	+FnYUmaZ0CS8p+W0cB4icd8EJsCl/7d8HLzaAQ6qe767Diyh3l1gHOzC2GZUb8FFKge5ZhT/KvCPi
	IoW24vcYsGXTgIWw7Vzl2RbBKys4iuLxzdeQxwC7DQc/MZDAejZ0YdgGLwLBhonVkLuV1I+ACTqI7
	P4/eVvzFGD+CBsz/GaU2iSaF2nMuZlY8RdUCocucheJ5Y4txeoZUZ284fya4F6HcXONtFgEmHJluq
	yoCu5/3TRr7eLP4tBT4ydOwUHtgV4k9ikWXohyfCE5psbSrNVSSXPSe7r5VeKQa0x0wn6AKOhn++Y
	g3wauwtow93IO6SuEzhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHkFi-00HGt9-HV; Wed, 09 Feb 2022 10:31:10 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHkAj-00HEyT-AO
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 10:26:04 +0000
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3A8843F1E0
 for <linux-rockchip@lists.infradead.org>; Wed,  9 Feb 2022 10:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644402354;
 bh=i2KI5hMSSyeIYLLHODdHiXGfEoepYgSQjsAA0Z52iOo=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=niKlaOGZY8LdsJtBqBcL5PHJLkq6iO2UOQEp3a7A+09aJMINFNhrBQWXKxWSZ897W
 8u7p7qZ1fPNwUOlGOqtfTXT/vinEsWrL7+xIisTdituvzmz6Jm61saLcB8q47vqM6f
 dMuNzOI4ZETmyLXKWiQ/qEX4SHuFHS6DOM/zLcFD2J7BAJNaN3l6oVCPmf/8qmRvu3
 HMIDEbfiD0cJg+tfPifb/caZdKPP+kO34hHk2lTBXVMPp4yCysihJESkYokbGsITt1
 EsXeEYt+Qp0JExSbQBz89y+aIeKuXmHjXaZJcvHKKRiEmq9xryVC5UhVb7n2YwPlgI
 2O0pvRWsUG8+g==
Received: by mail-ej1-f69.google.com with SMTP id
 k16-20020a17090632d000b006ae1cdb0f07so963711ejk.16
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Feb 2022 02:25:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i2KI5hMSSyeIYLLHODdHiXGfEoepYgSQjsAA0Z52iOo=;
 b=ZFK/MRFOtxKHXPwZSyLV4HdwbbEHeQs82NVWOVLsMl6//3kSTa3joUCrPpHqPTrzYc
 6cruILjgcDBhCD76Ik5Vim+qKAaLfV8bbtRWtj2rEmEmTf7FTjl4ZfuLscLnsn2vXIlJ
 IvrSVRbEubSdLu/oTP3we7qs6IvI/DymrmxKVE0nkNxsZi+xVOAmQkbVheoSvxvs5rkF
 f/hbBrVTFTFLV5GryPHvGtePLnAEIZUU1WCq8DlWkqA3Z5V62OfOjTN+uioFNPbdIBpM
 RFPFZ5NWD3Ri0eIOfRFXq+Av/NDQ2NxWhIxgkX69jxD5HxytZfiT6ZYHnDg4YIqvrQSX
 CqOg==
X-Gm-Message-State: AOAM533onvWrVyA+ll3dORwJFK0TnrpgzN1sXz9R5G5IS+XKePtl1ZKR
 RkfdCs4RYGYrjP8eqsCa1zmCtF2fExRkQm1t7BCi8ObQXXT0FGkVKaP1f92ZlwlCfvsAeXl1J84
 oLu0ulvOkAtTWrXUfMzrXjuRx41ONzdub1obrbq20mCeZAzYHDZnriar+iD1x75aXbA==
X-Received: by 2002:a17:907:1c1c:: with SMTP id
 nc28mr1295633ejc.651.1644402352734; 
 Wed, 09 Feb 2022 02:25:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzRaSoiC+XlrvlLAdpRn5m2h3uJb8sozRIUppuILQY5sQ+ZHYc6VwQrATFbYHecvSmkHWdwQvCCJZlalnZpyhA=
X-Received: by 2002:a17:907:1c1c:: with SMTP id
 nc28mr1295621ejc.651.1644402352590; 
 Wed, 09 Feb 2022 02:25:52 -0800 (PST)
MIME-Version: 1.0
References: <20220209101439.1657557-1-clabbe@baylibre.com>
In-Reply-To: <20220209101439.1657557-1-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date: Wed, 9 Feb 2022 11:25:41 +0100
Message-ID: <CA+Eumj7sWb9JCi4MzRj0bkBBD9LjsVBuZwimen11uLNapK73CA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rk3288: fix a typo on crypto-controller
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_022601_612101_60E132C3 
X-CRM114-Status: GOOD (  15.97  )
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

On Wed, 9 Feb 2022 at 11:14, Corentin Labbe <clabbe@baylibre.com> wrote:
>
> crypto-controller had a typo, fix it.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index aaaa61875701..a0d29de3acf7 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -971,7 +971,7 @@ i2s: i2s@ff890000 {
>                 status = "disabled";
>         };
>
> -       crypto: cypto-controller@ff8a0000 {
> +       crypto: crypto-controller@ff8a0000 {

This should be rather "crypto" as a generic name (see list of examples
for generic naming in DT spec).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
