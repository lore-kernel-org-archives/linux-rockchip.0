Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B7A3C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 14:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbLFdMu0hiKTGnpRhCFze8eHlWz0k+k8671mY91jwZs=; b=lpc/bjE3xRgdGm
	UGG+K9gUBReE2gM/iH2cO35o3EpcStNSyT800kBYttF78DJ5IrqutD05v871MCxMT3GdXPxvMJTAE
	3xQOTxFmdUWP6wouKpgkytwxNNtUXuNeZkRUAX1x1lcdWeQOiSZ542Sq6S1wEnVxWElaC3dzQrlWl
	T5JKjODgHC/1iyMdPKcAeYcqEm7jc7ssewX5k3gTeTQChN/Pw0Fe+nerXgn8sF2Ha3xbfnUWbZlWM
	GOGFBww9NOWr+IMYLvRw1GK4uSGuPYGU30S0An5wI6ilkx+c+VXgQUWwSEMIG0I0U31R3bGmR67EO
	nTWtdRqP5KYI+wxRg0nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpTEj-00000004z7h-2rO8;
	Tue, 04 Mar 2025 14:27:09 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpTD8-00000004yjT-01aH
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Mar 2025 14:25:32 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-43982cede30so6765385e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Mar 2025 06:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741098328; x=1741703128; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+bLOuvI3LiklO1AEtCigx8K9DH5XZ+IuqwfMAm3GpGE=;
        b=qdvsvHCTprAoUlEbIiKziT72fCOorfQv3IYQUdi5J7Zu8z8H967SDVuvSygRXKXVLg
         WTQBrJiKkAx6Nk7znt9Lc8IUznfZDiRbX6xPzzU3h47zbDPp1F56zqDjCgeAxer7lygR
         WZ6ClAD+mSnka5bv+naLzNKFK7S287ZFi4WzehX69vMZCUhXdWXsK9s9mt/JIwy7tOVg
         l2gS67iIADx45FUyZOOkxC97zRvPxW4cHlHqecizIWQXkJpm7IEdCS9nP9nJFmnTRHui
         PDY1k88FYGs+topeaVSZud+hqydMfD1LlKTphVwMvKY73pcd3wqnz0FpT31pNAfuFVqN
         RznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741098328; x=1741703128;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+bLOuvI3LiklO1AEtCigx8K9DH5XZ+IuqwfMAm3GpGE=;
        b=BSOyBfW9C3BDpPGucEYdBgSZaWXfldPobVvG28Oa76uKKFkXWLDlK/53UmyRyaAgV/
         Yiklsrl2PFrZ4d/AAtnTdqP7vEUOeJRF9XdKx2A0g/92vK5J/cBYyLxEfSu/yweKjf+x
         +xN954jJaiDzyfxLB4UVhFDlJ9rRpWcT1Bv4enTAuC1hG6+/wJt4SmjmcTNubFrOfIx2
         ntTT7Nj9FNPYHbdZxZZLXe4Gn4QFk8yk05+OGt6nrvSyx+C2Kb6zKzMiZJiOAnDBPJ46
         XVt/O346xzAAeqF0TbZyV+HiHgOb3rW1ilGO4pPyk70bIvUKQh2nAxgtBT5R2c+WD906
         dijw==
X-Forwarded-Encrypted: i=1; AJvYcCX1QQ5mJyuj+KT231LhbxYtIjgFKDzE+o4nxe80KVcj04kSe5I+4Eu7NN6xX+Sx+ik0dPT0X+VWJSbN0mMrYA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwaOpVYbRia5wZnSSM+P/UysuPVQ4SfMGJkKARrmiDKYINUMKP2
	L3G5jLtDu8cGEyXXfu4EgzsNbzfJJkTB6L4dLiaiIFEFOE/1D+8alTwv9XN2dpk=
X-Gm-Gg: ASbGncuUXhcHiuRM9gfetagBYmXEd10yH5J9LgHeifV2Ay6mS/T8MmV3jmtQXF1WMcl
	7NiINo/WwVCx5TUFbxrEfGTabqSJg/8ntbrL+NqGNgPEGnaob0dVK10YZQmHAG7aXAlMZDPf0tV
	0lgNNQIu6KDX/ECn3yihKaugdeeCEW9Ej8mUoSxzajvxHeChN9LtMEtloQaa3z3NFlKGCr5tZsQ
	m+Ncs8sB3lYodylQSIB4iEaEsJ+2+coZhyVaknseP3MBwAKM4tsQuvSmugLTPkAiXhf/acHhdtk
	Ra2uA8R9z5SUdoszMm+b1ZP2QglKkcmUHAsmoGReQfV0XDqqY1cUDfb0Bj3cuj/0
X-Google-Smtp-Source: AGHT+IFgyOmLhLikpKp5N8eKIBSRJawsxNl26KKF3wSiDL0Iv9HobJOAB2sCN6zFy0EWNUnPM86RFw==
X-Received: by 2002:a05:600c:1c9a:b0:43b:c844:a4ba with SMTP id 5b1f17b1804b1-43bc844a704mr21199545e9.3.1741098328217;
        Tue, 04 Mar 2025 06:25:28 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bc9c10f6dsm42069505e9.24.2025.03.04.06.25.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 06:25:26 -0800 (PST)
Message-ID: <2b8f2c5c-eb06-462a-8fbc-9eb28866f49c@linaro.org>
Date: Tue, 4 Mar 2025 15:25:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add ES8388 audio codec fallback
 on RK3399 ROC PC PLUS
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_062530_050071_85B951C7 
X-CRM114-Status: GOOD (  10.53  )
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

On 04/03/2025 11:41, Krzysztof Kozlowski wrote:
> Devicetree bindings for ES8388 audio codec expect the device to be
> marked as compatible with ES8328.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changeset depends on bindings patch being accepted to ASoC:
> https://lore.kernel.org/all/20250304103808.75236-1-krzysztof.kozlowski@linaro.org/
> 
> Please take it to the same or next merge cycle as above ASoC binding.

Binding was accepted by Mark to ASoC, so this can go for this cycle as well.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
