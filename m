Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D79C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 09:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3CZk9S+LH3DHFEm/75GSu9Ay6S7hE6swJ81s/v8Qhs=; b=gq7DvXGMXlqCp9
	grRLkxP0POQcN1OJOjqv81J8OJuwjFke9rBJrNI/QD2kWcwLTifLuif126T+mnZSf4geU5/j+6uVl
	SazgDpkopwLWZq7aQGZhwury869xtaO0wQknE+LCF4u5Mtg3teGM2+9Ob0Ws9idVpKHKT8kGxCxaz
	LJ8hPL+L2ttXg+vtuUQ44AlZWGsPST65/at9QXVs/G9ZmOi2dljOcwbCVVI7YHucr95cnbMz8GkLO
	H9wRDN5uiqA5NcmQBxYyK1Ue2JXM2Wus0Jjv7lsYVWO0lrPqE3FHYUA25JF/7ddQWfCtb2HNKpGZ6
	AqFLmX44aP4ba2naXiMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9k80-002yNh-90; Mon, 26 Dec 2022 09:50:40 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9k7i-002yFU-8A
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 09:50:25 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-466c5fb1c39so132879557b3.10
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 01:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fmF2cGQbBs6YMQ3a2rCQYqoYyMFkRZzG4KKzAOl4kLE=;
        b=bMQJ2p5T3B+1Eiwh0ozrHAFSKX35Q0vzPq3DrnZvLdIb6vM2G+ValqFymn66Om+Vhi
         28fT1dH1eW6Dty1ibjLTu6Log4QqlnXfUteW1cFNoHCdDvKwEIFMkk4v6w6tn5pzhd8R
         QOqlPlkTwcZ+vD/d9dAVA+vNDFQtgH/qlYGcjslLOYKQTxoZCo/d0HqUbVGJvXcLtKIk
         2vL7SubckkEa5dur+drIIMjALFcA6GcFWHU7e8zxoA+k5BTMS8AKwTLE8FznvyST0dMT
         RJk+3kpNSMjrF5R+pv615771wpwT+Nk+RWSJIz2y2BzdYh9DrPyJGOObh+wqYYoxp2Gk
         XuOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fmF2cGQbBs6YMQ3a2rCQYqoYyMFkRZzG4KKzAOl4kLE=;
        b=64OZPKCbW6rK35wBOmxSy361FGPdcg3frSBbFGjlSvyiE0H1EZC7SBNdA9QK1EsWr5
         HAZTCU+81SspVd/62l/FuWiGjp48xIryp6xu4epdiF15Bzj05pjVf0qn0P0R17l8oG7D
         pqkrJVJE4rHjHXLvclN0N4rWLTP+d1VJISX/nfbiYIyKdaM64OvoAtjSAX2CWi8uUOdo
         ZdVkyNvpZCj5W2cWaTqL2Bd9OPkQ5NEbwLLyvCjOjukSHtaja96eUnA0Ry+Fxlf5OZtL
         RkkWM7I8cBifK1pY7fetHDW3IlnklMHPn7uVLdCB3cFXNXxMqZgPGbJVNjEtJ9kAUqlf
         xtYQ==
X-Gm-Message-State: AFqh2kpYqm8VGygm2pBschFO5plI5HqHxixBORu8Ud3jpCfldDE3JiSZ
	TpQfTO7ebCzca9FKFNaHeps7sijkOFtQxdcDb4WiMg==
X-Google-Smtp-Source: AMrXdXvZTcC92hWOMbyIeK3dqSwaIggP+z9ZEXfdPvWXDfuzBL6uLz0bBSmiWglVMuUa1inps4rVFLku/JoLp2RZopU=
X-Received: by 2002:a0d:ca88:0:b0:3f5:7f7d:2d4f with SMTP id
 m130-20020a0dca88000000b003f57f7d2d4fmr2143854ywd.276.1672048220248; Mon, 26
 Dec 2022 01:50:20 -0800 (PST)
MIME-Version: 1.0
References: <20221226063625.1913-1-anand@edgeble.ai>
In-Reply-To: <20221226063625.1913-1-anand@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 26 Dec 2022 15:20:09 +0530
Message-ID: <CA+VMnFw_aHNuPKrSeLy9P3ZngYdyHMtiyW+GxdNCEGRC0N_TmA@mail.gmail.com>
Subject: Re: [PATCHv2 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix
 rv1126 compatible warning
To: Anand Moon <anand@edgeble.ai>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Wu <david.wu@rock-chips.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_015022_533221_D8DDE2D0 
X-CRM114-Status: UNSURE (   8.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 26 Dec 2022 at 12:06, Anand Moon <anand@edgeble.ai> wrote:
>
> Fix compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
>
> fix below warning
> $ make CHECK_DTBS=y rv1126-edgeble-neu2-io.dtb
> arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
>                  compatible: 'oneOf' conditional failed, one must be fixed:
>         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
>         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
>
> Fixes: b36fe2f43662 ("dt-bindings: net: rockchip-dwmac: add rv1126 compatible")
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---

Reviewed-by: Jagan Teki <jagan@edgeble.ai>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
