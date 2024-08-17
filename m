Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85BBFC52D7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Aug 2024 13:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXTpOar7K69mV1mbRvNwtjdGOwg3P6y01mUK0x5kGDQ=; b=k7XKVdJBiSE0xc
	81g3NARNRygx0ooOPtiVzUqeir11CQ8X6MKaIkiLXeO03REcL92YQPal1x9E4GCbn8vSv6ojyzhuG
	8GbBCB3LMl19ah6Xdt6bnUr3s8YVp772vR2ME3Ijb788QIga+WZE+59tq1njXwZokm1z1fTZbcEB4
	5SldeImN8qxpnMnL5DNXnNjeOT7C6De90R3+czvdttHU2JAHe87VQzZhqXCNLK1Mk5XIK4kiZD85O
	JWRUJEZrPMTuhziWpfFLn/VvpFHH4qlwuh7XhEDdz+QRsO9qhUvidixAGMnGeN8BK5Vj7KWM3yROA
	WTPppQSDwYvW4IvQrY3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfJON-0000000FFf9-438b;
	Sat, 17 Aug 2024 13:22:51 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfJOL-0000000FFeP-1QFM;
	Sat, 17 Aug 2024 13:22:50 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-2702a00aad4so900683fac.1;
        Sat, 17 Aug 2024 06:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723900967; x=1724505767; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kIz3WxiGw2b5pjKxeFQeh+US8XPzHOkBIlB6jxrVIQA=;
        b=ktMqGMEFekZTXYzPPMxEHvvoaPDT+x3KuPD6vA1FK0PaFTkigIV5hdRjoA7BBhTyKp
         pOR8taYBm2G+RLtZGPpycH5m5KMmjmBysdKVon918T1CRtX/6gK3wFzvpwPEWac1FM7c
         M6RVfa1583xr7tTHjnIE1h1b1LLR3J1caN8uEhZByaV72gByJig6RJ4pQFxYZ7mpNZQ0
         VwsdBwryooiSysGdvomV2sYmtc7lXr2DgYzZYl3E42YFkeH+dnb6Tq5MoMT4LYx5DOsX
         7qK8xxAfFeQPKzQnVnI1YMHcz5sFYMMXbovUx8qcMB8xa2KQAEt0BlWViD7Ta8vxxdy3
         r1yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723900967; x=1724505767;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kIz3WxiGw2b5pjKxeFQeh+US8XPzHOkBIlB6jxrVIQA=;
        b=NkqJFomt/OpTvjVGMe3T6dyBVLYUBXqNZRoQvXcgwhpEHltCHTlqBD9kPHSA7SHLMa
         HdbHAolijWbepGi3xNWGVfOFnKnb3qp3J1mt5wRTXGyxsgBDZ1KZsFotbqwxCeB6v5Z+
         QFraHfRmDHRPnZ375gdVnqvho5R1l9FJOWMUsGatcCTWJ3JhrI1DmHZ22Xuc8n1nVDEu
         +ouA6F0L9IDGX30B0vtz9fMCVzm3H/qU17WL/QpfWifGkohQMICUjJXDINu91bRVaKWo
         3GbNU2Db0QsjYThVI1jMjxf4WuA+5nOSSudlrpOkP9minRETJZ6+wSBBG/5nt59yH4eJ
         5GyA==
X-Forwarded-Encrypted: i=1; AJvYcCU8/Cul8oDDaWeihnMcV1FZtoRq4dOlzGZbk74d8VsVVYtkBXBmlIj+fDXSxWzs9H3JgnGWBo9q+xn4fInwN7lob9eM25LlOClpnbbI3w0K+XWMg73oX6w8Yk+0vrkXGyfjz40tuoihBp7yQwJe8ZHsQgUM4lsoifc=
X-Gm-Message-State: AOJu0YzyrBkx03AMSOi423iEmi/LL35qg3jEueBQXt4VzzKw8yl0f3Z+
	Kt651Q+Eefg9/StMt51QDmC/yMumEfVcQGuiMaALGHPH6KKcwoGx5GfCE3FLBckzY7OizBh+kLR
	nd9JOIFpQ3UC9eImilYUG+0WkgPo=
X-Google-Smtp-Source: AGHT+IHK2heb9nA7osGKnnkoacqf1MT3kEjpkSKOpqhsOVIrl2OikZXm+KXZVTW/PJAzQBHDVAM/Q8fNk01MNAk665Q=
X-Received: by 2002:a05:687c:2b94:b0:25e:12b9:be40 with SMTP id
 586e51a60fabf-2701c3df3d9mr6032787fac.25.1723900967163; Sat, 17 Aug 2024
 06:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240625104039.48311-1-linux.amoon@gmail.com> <20240815161135.GE2562@thinkpad>
In-Reply-To: <20240815161135.GE2562@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 17 Aug 2024 18:52:30 +0530
Message-ID: <CANAwSgR+FLRHpU1sJ3PvNzpAKqMus6iygjQs6yv4kmukuvUGzA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240817_062249_399575_1D6864FE 
X-CRM114-Status: GOOD (  13.11  )
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

Hi Manivannan,

Thanks for your review comments.

On Thu, 15 Aug 2024 at 21:41, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Tue, Jun 25, 2024 at 04:10:32PM +0530, Anand Moon wrote:
> > Refactor the clock handling in the Rockchip PCIe driver,
> > introducing a more robust and efficient method for enabling and
> > disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
> > the clock handling for the core clocks becomes much simpler.
> >
>
> Why can't you just use devm_clk_bulk_get_all()? This gets rid of hardcoding the
> clock names in driver.
>

Sure, I will update the patch.

> - Mani
>
Thanks

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
