Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B72C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Nov 2022 13:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bObmpNIWg1eG6mjbSkFTZNB/8L1fWfCN+oTizK3PSng=; b=CbHeeOSeSnYeBx
	ivsoa6ImkLQ5740k5LdLInJwu9otIfb3GGCIgFM9pxLWE8aQjDfujV/kinTwc9HL6deZHTV6l6Ks9
	YbII6K5nPlTx0ARH/rYpq7QJ+GLF4OR6ssPD2Cc7XgnCyVsLDO/No8ybOl9L7Y5CDS+LHmp9TTrEy
	kWADzwrEF6YDW1Yrfi3a2CFCFgYiFVolF/ar3sh+ue6RVrEZrjhq5CSB9TulAy8xUjvOzBVCB+WI9
	wzoGQ6AB18bKcORBD95z/mduhPeNKXmNw+YGf+Napb2Ify9DODMf+/9+jyy1BB32ckdljhDonF+hQ
	apyacq5Eyqz+K3D+565A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozI8M-00BZ2v-On; Sun, 27 Nov 2022 13:55:50 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozI8J-00BZ1C-Fq
	for linux-rockchip@lists.infradead.org; Sun, 27 Nov 2022 13:55:49 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id y83so10315643yby.12
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Nov 2022 05:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cQgkgCpTm47iZNFmlvpgr7O6Bta34qrOD+35DbgT7Hs=;
        b=EaVgCDHNZAmj3FTD6fpaoEc9wMNz+9kvB4PAZQy5kNn23SojzQbpEWs6GaOzPvsijh
         tTQOCRJfocFa5cnpH/2jIZxe9OGwHcHdb0hYDwFn+GlIWQoK7hR3tMAyAGsRSdWJLajN
         X9PDaVkAdwnzjBDaLf1ThfnXj8008V65cP7HEFG2YwzGyWzwz0G3FZ5OUrq1wpZ1MSFH
         Ocm89xeMa0a+bGfgWunWvALZAH75mkxk7eFk/Pe05nkqleto7FmfVqQrsx5AZ2tau8Zd
         YuYoE9UzKWtRVOxGPkVeLmQQqV3E105sA49ENmQxr0CTxXux4TIUQ7UgtAQb173VMtrz
         JyYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cQgkgCpTm47iZNFmlvpgr7O6Bta34qrOD+35DbgT7Hs=;
        b=sdJAB+cuHU+7Rw+m/fA6tHCIA/Gx6ycGh/y49KyRY47I+6GxF9Z9S6OEz9As//41Wo
         gVOlssnHDJpPCJbBYWq6Y2O+Xw5NNlBpi7bgfgGaizjM8tIzW+/nIiqKiqyX59hyqT+w
         dxTo8Vxto58p9PazfqpI86nmfbPA43/5STXB7o63eYva9yZ8hVXi0ur5xdQY6px/Eiye
         esXC7cy7XFv43JK1l5HTvDS+JsqbB+1FlASrBPTuq4MlNmTKt9ejue8zgkLC4LTObBxL
         wyzF8pddFRcSqc1PC2NJmmf561pyoG70KLkPaenp/YhvHTVEL3TGy+ca+myatm28xA1i
         EtmA==
X-Gm-Message-State: ANoB5pm11DLbuvKv4YvEmzAqiEpSM0js+/btNyOAEycmNCxCW5F6HRYm
	lqW6ClYw11O1O7JqMgI2QU5Dd8VIbCGTPD2jdMeGUg==
X-Google-Smtp-Source: AA0mqf78JJ01h/v6Znk5k947NIWBr4J7ggr8K9DBEkpFzpkdRkmGt8APOpa5H/tk8spvw1FfR8tFwTPtLwJNNvLkkcI=
X-Received: by 2002:a25:cb92:0:b0:6f6:2c8c:e8ef with SMTP id
 b140-20020a25cb92000000b006f62c8ce8efmr1616167ybg.416.1669557344715; Sun, 27
 Nov 2022 05:55:44 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org> <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
 <149c2614-d87a-4406-5552-f444709a6e09@linaro.org> <CA+VMnFybPA=6-LvSDd=7EXk6fo4oY_hNBwCcDURgnFs4DP_hzA@mail.gmail.com>
 <1f8eb33b-1979-ec28-e3cf-6e6552959b3a@linaro.org>
In-Reply-To: <1f8eb33b-1979-ec28-e3cf-6e6552959b3a@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Sun, 27 Nov 2022 19:25:33 +0530
Message-ID: <CA+VMnFz8czfLKoodnD2VkmoBBV18hSM_O40m+qrxz4qzaZxt3w@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Johan Jonker <jbx6244@gmail.com>, Jon Lin <jon.lin@rock-chips.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221127_055547_772107_DD8D954D 
X-CRM114-Status: GOOD (  14.62  )
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

On Thu, 24 Nov 2022 at 15:06, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/11/2022 17:35, Jagan Teki wrote:
>
> >>>>> +     aliases {
> >>>>> +             i2c0 = &i2c0;
> >>>>> +             serial0 = &uart0;
> >>>>> +             serial1 = &uart1;
> >>>>> +             serial2 = &uart2;
> >>>>> +             serial3 = &uart3;
> >>>>> +             serial4 = &uart4;
> >>>>> +             serial5 = &uart5;
> >>>>
> >>>> These are not properties of a SoC but board. They depend on the
> >>>> particular routing on the board... unless this SoC is an exception from
> >>>> all others?
> >>>
> >>> Was this a new feature to follow, didn't see this before at least
> >>> rockchip SoC's.
> >>>
> >>
> >> It's not exactly new comment, but rather not always enforced/given.
> >
> > It seems like i2c0 and serial aliases are required across SoC instead
> > of the specific board. An example of which i2c0 connected via PMIC
> > which indeed require aliases to get a probe, which is common across
> > SoC.
> >
> > [    1.778941] i2c_dev: i2c /dev entries driver
> > [    1.780877] rk3x-i2c ff3f0000.i2c: rk3x-i2c needs i2cX alias
> > [    1.781410] rk3x-i2c: probe of ff3f0000.i2c failed with error -22
> > [    1.791312] Bluetooth: HCI UART driver ver 2.3
>
> I2C driver indeed seems to require them, so then it's fine. That's not
> the argument for serials though.

Yes, I dropped serial aliases for the next version.

Jagan,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
