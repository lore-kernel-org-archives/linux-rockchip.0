Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDF8ECCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 20:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgyxRBILH/OeZDttL844eAiXaUNZ7/TukAiyt3vcruA=; b=NnThzQb7tlUx6J
	8y2/hCEIgHcZM6WdDWxGhExoiP1qeI72mPxJ5KAsX4Fjxm9G5ecpSaBuIMoULxFJNTZE4H0LDHrI7
	UIBjXc3mHMjNLnKYk8xqxQBQcc+gS5odtx+O7C7ptXOs6JvIOGHVntw/bEgK0LiY/3vOiYXrv14P1
	B2cJb3MrBH/I6M+9rIr/YfaiEjPn9cASOIkvaHPVAzOsPdDCjIEtmSRvRKOv7r7N+mB+vWdlEE1Vd
	NkofH8TcRFDD4KSued03waCRd2FB6luPPS5or81ZJfJMHY54JQvQALOqj5jmBIpHr5ju/R83x+SHa
	/Q5Z+cRhDW1hxpANa0Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDpvq-0000000GaiM-1cAS;
	Tue, 28 Oct 2025 20:04:38 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDpvn-0000000GahQ-1L2h
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 20:04:36 +0000
Received: by mail-ej1-x642.google.com with SMTP id a640c23a62f3a-b6d4e44c54aso1115199166b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Oct 2025 13:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761681873; x=1762286673; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mvFLFLPPs3+yk89H/w8+G4zuqCvw2dmeY+SAI1xVWLk=;
        b=ekm4lXpBEyRDnZcum+nuyLrIllOLG1U2CbCqdflESvHTVWFStUqkSYxLOxq4iOP4wG
         SUqHZj4UgeLTsao56x+9FU8HWR5SE7+Bv0K296wnr5FTPKqEZkCT8BGQPjPyzrBiWPaq
         uSA6Vz8yBwuJM8ezDTYYCQNdQuKv4uUCYommF+1aQnm75lJXNYizoqRvpfl0xEK7TEGW
         Ex9sMZuEMvwkdvuhsTY3QH38LJYMKm10UDpKKv4Xfgr/Kr6uPrcRpchF+2ZMTTjv7RTT
         qpjbtSc18LrBLk4xSI+RqWwVwPIUXHgN+VO23WHgUJYnrP15EIO/8qTRvVcIQy0tEufS
         3xoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761681873; x=1762286673;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mvFLFLPPs3+yk89H/w8+G4zuqCvw2dmeY+SAI1xVWLk=;
        b=SzNv855W8GVIY7tZv4OYQGdNS5wssFBuag8fnGCctxtwCkDQ3mcqXzas1vFZM1Xxfm
         o8YRdB93kQ2jf/bk8vyKlWdwsR5RTanmvwdROQTmtK8E913ciIefYCsh4A9BTQ/drXhm
         TmypzM+zVnGtUKZiA43dnck8KpX1vgTDxKtBzuJykiFWbEDb6WFi9UYfZvQ2kmHxzl/T
         i7L5kF6v4BLgOk+YDNYr1ql6opNUi1Squ6pYWxDkXluNdIQ2SIPMXOrn4ronhH/5mhWD
         2/+rvTTIlMYS5Gg27RwvCjvbsRF/vVOuYyCF0z6+SND6q2aroCPV/UO3l8ltsKDASXMO
         +MtA==
X-Forwarded-Encrypted: i=1; AJvYcCWxkTPej5vAXIaNC2rRjy7mS1Mu6qEqS9aq/RxUW6yn/mEGe+WWvpbuMwVVM/CcaGSsDbH/ARVyvF5yycuFzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCLU7kTF8PNtA/IQBoX9ela80N6mYCk7wVR/Qa7q0AMB2nLVQh
	iH4WLlL52LuR0Cjrftja6P3yBKgvT350hhypYy+tZUtmsRaBuBdkT9HwsErbn8uVikaeE7Y3CrY
	0AP8LxAanbCMz1XUguKMPmYX6Hel8PPuBGmee
X-Gm-Gg: ASbGncu2b3go2VQQRqQTpzCbF30znCzcWphihhtd77RzOWTs81coyWSnaGevpHCgG5E
	mNyysbuQvj8P0zbcvChWo78ThloNbLdS+KGFRoVwX6qx+Sm13fxaNHbBIcJg8K2zEV/xN/06PYl
	8PrFi9sOriJ9YUOCLIx9hHRWrdz1WSGgF77TVBvmpVjd/lCWR6hF9aKIq8+8/3FpLTdIwaK0sxj
	0i4a7vLFho47/0jT9xYymy1ie/GQsBllLmzwwY8LClODoXsHITVNK7eSUw=
X-Google-Smtp-Source: AGHT+IFDjK8MLECJT0dENFGiL0Jo9FVPnXuxQmfyQEo4KDojw6waYKY+p+k6inRp9kz678PqRBf337s8mwUojDmyf/Q=
X-Received: by 2002:a17:907:3d8c:b0:b6d:75eb:fe67 with SMTP id
 a640c23a62f3a-b703d59b4demr22265066b.61.1761681873248; Tue, 28 Oct 2025
 13:04:33 -0700 (PDT)
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 13:04:32 -0700
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 13:04:31 -0700
Mime-Version: 1.0
In-Reply-To: <20251028-semicolon-audacity-dd5bdd418207@spud>
References: <20251028-semicolon-audacity-dd5bdd418207@spud>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 28 Oct 2025 13:04:32 -0700
X-Gm-Features: AWmQ_blF2frbmtiB74GgTBUwzGzFsZ-ptZ4Fky8q-UuBPD1Lp75A76H2Sef8qTk
Message-ID: <CALj3r0hWzH+pmkbJe7DdqEzwqcpSQdkfPFtv3S7m-H8gZp0A6w@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_130435_381427_759ED773 
X-CRM114-Status: GOOD (  23.02  )
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

There won't be any problems at the moment.

Just out of habit (because when writing code, variable names cannot
begin with a number)
There may be some misimplemented parsers that cannot do this.

As a practical matter, the branch of openwrt has added support for
this board in advance, and openwrt uses the DTS name to initialize
some default settings such as LEDs and bridge

I'm not sure if he will affect the version that has been released.
But maybe it's not a big problem.

If you feel that there is no problem, I can send a new set of patches
to fix this problem.

Thanks

2025-10-28 19:46 (GMT+00:00), Conor Dooley <conor@kernel.org> said:
> On Tue, Oct 28, 2025 at 12:38:10PM -0700, Coia Prant wrote:
> At first, it was to avoid problems with the beginning of numbers.
> What problems does starting with a number produce?
> Given that it is already used by downstream projects, we have retained
> this to ensure that users can seamlessly migrate to the mainline
> version.
> What's the actual impact of changing it from "nine" to "9" for
> downstream users? This is a board vendor, probably nothing is even
> interacting with the board-level compatible at all programmatically?
> Please don't top post.
> Thanks.
>
> 2025-10-28 19:35 (GMT+00:00), Conor Dooley  said:
> On Sun, Oct 26, 2025 at 10:36:44PM +0800, Coia Prant wrote:
> Add NineTripod to the vendor prefixes.
>
> Signed-off-by: Coia Prant
> ---
> Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> 1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index f1d188200..37687737e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1124,6 +1124,8 @@ patternProperties:
> description: National Instruments
> "^nicera,.*":
> description: Nippon Ceramic Co., Ltd.
> +  "^ninetripod,.*":
> Why ninetripod instead of 9tripod? That's what the company uses and in
> the marketing fluff for the boards.
> +    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
> "^nintendo,.*":
> description: Nintendo
> "^nlt,.*":
> --
> 2.47.3
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
