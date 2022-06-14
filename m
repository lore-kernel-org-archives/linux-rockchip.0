Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C04A0C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 22:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SOBPLxoq5G+PQxoiVMKHklhNy4MtBLChUujSVE9sg0=; b=g4k3/zsnJaJyev
	A6dvLwIup9QtNAnU9XpiKD98j9KBD1hS4sFwDXMm+R8CfOXQkDAHk2ALPMwO52h7CHNQJKKNZ1SJm
	S5dx75eOKHxIfMFt8/nVo/BqONjHR+Ya5LycEP49bGKyCWUNj/0v2+mcFUxyNz/9LB9Ip4y2xdHZQ
	e0boolqBA51esS7oJJ7sRTKWWodbdC7l+vg4tgInVqFbXI4N0NwP4j+3JRGJE/RGT2tzqZJZ7O28W
	44BXWWS8CVORqiU9Fv8IDXiXQoRDm5YkVcOtfoIMcijFsI+bo5XDwwJQeeKo9uAOw5Oes5oJhf08X
	BD742P3iwVTTFKtsjMwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1F9p-00BdR8-02; Tue, 14 Jun 2022 22:37:09 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1F9m-00BdP1-N5; Tue, 14 Jun 2022 22:37:07 +0000
Received: by mail-pf1-x42d.google.com with SMTP id bo5so9825324pfb.4;
        Tue, 14 Jun 2022 15:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ehMdU1wUOTSLPaXmLlr3cJgFkTKRonoGOZLrFCdQIRA=;
        b=Dp09UW6yv8u8DJ5Hc4yf8A/Y/UC+N8nBXwwzDZLo+VqmHZjkB9ewlAY8ajlUcZgF9k
         UdakADtH7vt28/CxePNkuxauxiqQqxDCbTSOobBH8vgPyKK9IF5Q/aD+EHPPI8eszJtz
         gAhyWu0ywr6XythaXm0cPINL7t5SGMwMxu2i9oHRqzEBy4Xi+APw4tY0zjOT0/n0N5B2
         2TEtazJ1HUE/v1T8CIv0BvwFqIKBPJ9q6iPJUHgTj8KgOr6AjrVn8doCYDrw7SWzDZH0
         xHRpoPnneeKxeI9z6Sykjqt5O4Fa0DdoXnrp5FCKxpzPQYYFjA21pgEyT7BWRO/cxIu8
         OIZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ehMdU1wUOTSLPaXmLlr3cJgFkTKRonoGOZLrFCdQIRA=;
        b=p2JoOWiwiE4fwNHnIfLKXZRTHHVZRUl+z4zI8L2+UFTDZyHE9VCOp8gOth8wyIVYZT
         V8eTEgZOCrVJwPG4EkcyFM/X2VG5DZN/d1W7dMKxxklEAQ5Clwo93hyWuBALpTSfi45d
         U6EW1nyK1q7JBHL/UKbGyKHRPdywM9lMP9H5VnvAGjdQOVuxu9+TxLD5w8ybPOFrUKKn
         +3aT4S/HGbLxeHZCeqNOITJ1gDnUNWDp3HPkeNOr5ffTS/h4LZEmKHRRt/tOyKr3+QiL
         85ov6AULliCQCt28vZq+xG07FV7eECZ/whY6MFSM92GhmX+2acM8cv1yTJxSKaO/2tRl
         PfRA==
X-Gm-Message-State: AOAM531qvv/J4uyA4DM8uXxfVeG/H5bXs6uhAnr6ybwlJdD+wZsuBeoY
	5CjSlkBMNxrsYHyFfDs5CL0=
X-Google-Smtp-Source: ABdhPJyz5atbGbpNHgmgU5yU8QCEQtJBmUiQY46Exz4wbdmtkbxIaNTG9WUuvWndA7T87oS6MDSvFw==
X-Received: by 2002:a62:601:0:b0:522:7a73:c0b2 with SMTP id 1-20020a620601000000b005227a73c0b2mr6819990pfg.33.1655246224606;
        Tue, 14 Jun 2022 15:37:04 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id x4-20020a17090a530400b001e0cc5b13c6sm108943pjh.26.2022.06.14.15.36.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jun 2022 15:37:04 -0700 (PDT)
Message-ID: <ce8b295b-4330-f0c2-328a-eead693a1c79@gmail.com>
Date: Tue, 14 Jun 2022 15:36:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v4 6/6] arm64: dts: rockchip: Add mt7531 dsa node to
 BPI-R2-Pro board
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sean Wang <sean.wang@mediatek.com>, Landen Chao <Landen.Chao@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Greg Ungerer <gerg@kernel.org>, =?UTF-8?Q?Ren=c3=a9_van_Dorst?=
 <opensource@vdorst.com>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
References: <20220610170541.8643-1-linux@fw-web.de>
 <20220610170541.8643-7-linux@fw-web.de>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220610170541.8643-7-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_153706_800267_9C65B4C8 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

On 6/10/22 10:05, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add Device Tree node for mt7531 switch connected to gmac0.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
