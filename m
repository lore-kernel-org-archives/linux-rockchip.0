Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CCE9C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4i73w64x9bmQ58iIkRew97sIM7L5qpfE/s2S7gSNRmU=; b=iQ+si73kGXYQby
	43U12b57QP/L2t+F15jufBdXwednFgKvCWEyP44Xu0sMZqf3ovIC8zDQoToRQUWECvbxwZDEdTw/D
	SyBzVCXSTVqszDPfA7luexQTz+vBmDE6ijrV0dmgqd2sttIdC3JBpjA6L11AXXXpYtV3UxyecbkU5
	JjqBWfX1whfcdEJEDjBw2U29RObfAejhW6SLJpXgosLe2EuarEGOJa/BDk1u5n8PZ4nA8nh55w4dC
	HT7DeHkBENHwPtFFbdCKe1SZUjmN7gmKsjPPZa7jfzukwzKRT8xb83n7nO8c97sGIv1ioHlmiSr39
	+hAC593Fh1oW7aAaK5Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTU9-0067ZS-H6; Tue, 23 Aug 2022 12:58:25 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTTK-00678U-8D
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:57:36 +0000
Received: by mail-io1-xd36.google.com with SMTP id b142so10788306iof.10
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 05:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=DXlA4pH2Idgh+cA8fk4u2a6pyIz1gq6RjPYaksX10eU=;
        b=KeK2C6ATWXGDbWzpL0lFqY/K8+HXFFGaAKyiZ3FCggfdTi4lXsFraTkrQCO8FzRaUi
         KQOOiADO9fbeyyu4+c0ABuObO/ohlmnTysxAhiJZl62D3F65GGsNULr5k21gJkNrRnAF
         tZOfFEHYwZ714tGYMcYJRLpyBC+D8Sqhq6Ywy1y3e5vB1gbLrRFost/QSRICNpfgNCZn
         YMUtRWnylIEVXexqHsdGY7eEFwA3Zg+/Oiwz1XjUpTDE5KxcHyVr3xSaRzQgt+a4dAwt
         IsD8cYBU6InxBQuP86hUa8rmjVTx4uHV8dnlP4VfdgmzYzy/38OB4QFdteF4shQkJ/RC
         bUwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=DXlA4pH2Idgh+cA8fk4u2a6pyIz1gq6RjPYaksX10eU=;
        b=lDYAHsybXWS3s5B2AP0dbOT6gh72flX3JH4gn5+wL+G6d5HdiHG6OUIEre29Sdp4YH
         Y0S4d0t7R4sdx8a76nqiSVRJ20XsJEzfrh9tt4w7RY9lmTW9FMlXJr7sarvRXeDmxRAe
         Ks5wEYxExAV2JFw61U0SJvfUi8GLA7fNVS/ycBYYrrGJ82jr1qlHVV4p2L4XKngm2nM4
         JYOKCuEwykHgeluoYy7nnP6o8rMNATlFeSwQLXYkS7TsBy4jqyVPVh5oz4YxvWxEeSF4
         r73smjg1fAqxrOOGrpjBbFWSKZff7FzWqCJygjmg3n+fe0oOkE5A9z0j/0T4REZsa7lX
         2TGg==
X-Gm-Message-State: ACgBeo1fnq83eZrrsOnzV14T/ZxixUDdyulhZkhT8A9okabYCGFcbN0F
	yk0O5EhYdlY/nrnNlRIxOwQeGJhHkyQJJna8AuIeLA==
X-Google-Smtp-Source: AA6agR6FMvlHIDAHScvrEma88CrxcQ9VUCd1MdfFASVddPUA9fEX6U4b0zxtKZdCcOTU+PXlI4u99tspQIVxVGYE858=
X-Received: by 2002:a02:ce8e:0:b0:349:ce44:38dc with SMTP id
 y14-20020a02ce8e000000b00349ce4438dcmr6183403jaq.298.1661259451083; Tue, 23
 Aug 2022 05:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818124132.125304-10-jagan@edgeble.ai>
 <20220822181009.GA80526-robh@kernel.org>
In-Reply-To: <20220822181009.GA80526-robh@kernel.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 23 Aug 2022 18:27:20 +0530
Message-ID: <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com>
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Kever Yang <kever.yang@rock-chips.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Finley Xiao <finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_055734_709232_0D4BA850 
X-CRM114-Status: GOOD (  20.11  )
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

On Mon, 22 Aug 2022 at 23:40, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Aug 18, 2022 at 06:11:22PM +0530, Jagan Teki wrote:
> > Add the dt-bindings header for the Rockchip RV1126, that gets shared
> > between the clock controller and the clock references in the dts.
> >
> > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v3:
> > - update the file name
> > Changes for v2:
> > - exclude from clk patch
> >
> >  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++++++
> >  1 file changed, 632 insertions(+)
> >  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> >
> > diff --git a/include/dt-bindings/clock/rockchip,rv1126-cru.h b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > new file mode 100644
> > index 000000000000..cfba8226ded2
> > --- /dev/null
> > +++ b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > @@ -0,0 +1,632 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
>
> Dual license please. Need an ack from Rockchip for that (and not just
> on this one).

Heiko or Kever.

Can you comment on this?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
