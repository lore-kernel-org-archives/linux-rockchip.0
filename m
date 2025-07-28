Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38D75C87FCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 05:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQkHB57Kut/aaTZRO6f+V8K7A9qpQ344yS6bPVF+tNE=; b=0GdhjYXo3YMF06
	8IiyZXbc8hFexDv3Gy/vRbvmSvLK6ZCtHTA6TDLsMjuV39oyfMwEwdU0WP5F/KiEee/byWCgzo9qX
	04xbdHRqWPT1d7pP9TFsxguSp2j/ywV/o0shSB9M/5vKK168aT1lQgFRV26lF8bDF5vkKXTzL0KN3
	kiF9Yj4umnpx7JgfhbJeJBFQiYuiI79hPOUIbqzAAPvSNKYSVQfHdSFWS/8k8tIMKhdS5MILrt63R
	BeODZYF65VGFzl7zi8Q2uAgn+UMO/a8NWnJKLxmlhKcuAhaa7PqR3X0eKAHpnD7Py37lZXIO6Yy0h
	OOcop9GWku8w2sNnqqLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugG5M-0000000DdCc-2M1E;
	Mon, 28 Jul 2025 05:07:40 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugG5J-0000000DdBt-3OB2
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Jul 2025 05:07:38 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-455f151fe61so3648705e9.0
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Jul 2025 22:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753679256; x=1754284056; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=L3eSrG1vqRe3J8vkPZXbMpRX/xHdKrmfIqvsgLhc6Z0=;
        b=SLrGpBPseDdLAUn1fc1Adl3U2KerE3ZCQm3bGQzk0X2Qw1PyNYnMXy7YDaPkaOONrN
         uCKaT9j3AQ3+37+SrFn3+vJ+rHwY64Jp29TWtfqUHide4uHoxK493xZbmU3a3GEWJJA1
         GV0FEowHmbpZAYisYgsQx2sOw/sHL75QwX+OYSmvTY+yJOHnmv2l1eJQxrQv+KT1pEH3
         ZxqfleDXvavbLKkR2Hq2qDJ3FIxoHbzUSW8R6+FlXfJFdggNi4FwyJloQzOFmqW4xvf9
         YeZi8AAsvJTNeIdIe92mjYTP38cs9WfQDEvlvgucUOrLxkjKazI2Y4Twp/ixqsGrVbmr
         n1Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753679256; x=1754284056;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L3eSrG1vqRe3J8vkPZXbMpRX/xHdKrmfIqvsgLhc6Z0=;
        b=iZdssO9H/tUgV4ifVtZ4ydn3hlOO3cdBusEoBHxVhME/s5uS+FjEUiBf1QX2MSxxLK
         h9DaVDFeGvywq8191epKkOiMhL2Nv6aqy/n7MOABx/zgJ+5euDSbZS7xgM1aMQM5gcKM
         dquNAUlFPpbo+p1ghxn0guPInukD/LMNNstthu1NGCS3UIh70zeenGUpDsnyfn7I/OxS
         1uG+yMdJ/8JE5h4ka79MbzvhY96uBeNVR8+TaRxV+kmcV4r2zaUF8zPTdF+yQk/uI58z
         ZUqM+4kj4iRA+UNGodhOwFLDGK/RWmKsfL3bstbHs0ly2vFhxZIS0CWB0xYRY8gPD5kN
         GeIg==
X-Forwarded-Encrypted: i=1; AJvYcCUyE3RPpit5P96q2nb1B+s6lxRSiz2bjdJGwcy3iC/d2I4YDvkgMlY6c3TkXx9PxklmEa/Y44VHQkHoY4Pvhg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5yZy7efZaoo9umxlkrQbl5UNAM8aoCRzQnAAtWi0aqUckyM74
	72OVxubQtAM/AV6u6+LhU+ERXBovVXlL8O2N1IYQmqCmMy57X+p8UIBFoNjYdiNySks=
X-Gm-Gg: ASbGncsTg8thH1rLOg8zbJYKzx9VdKhmP3Yvkh1tvHts5EMPRHC9gYNEjDOJMhwpLOg
	QXkfUsnv71bNGj7Yw/HcPIYpW/cPnwXafKNTBK/0kYUXv6XQRs3VpspvmpbJRl9FVYR9vmpcoMf
	5+mMMFwYMOMltjQReM6NQqtve1XkoQ7Ts8pJnxAmGwXoCJTRmN591DOYoxSd6h1Eq9G8o9cVDxD
	W6gvDCfoe9GxLRh79FHtQK09Q2c31COWpB2kjcour35ovh8Gww7BCkZCNDDu6XW0r8+UCVNpHj+
	aGk8VzsS9Yav8SnoHOa3Y2JIBEbwelVoQ5atKKlqgM2UV/qAGBGOAvUGP1dmxVVeqjpn4hMHcbk
	sxC0X7EVTV/GsmjG8099RH9jhEgQ+6UP6QpikBatg+w==
X-Google-Smtp-Source: AGHT+IFTiLLa4VIdaNVlbk8aHV5CofUdpZeQ+TwRocmmdvBMGt2mf4/1U63x+Qn0o0ivABMfNj6mgg==
X-Received: by 2002:a05:600c:a06:b0:456:1a00:c745 with SMTP id 5b1f17b1804b1-4588459a0dfmr11175385e9.3.1753679255762;
        Sun, 27 Jul 2025 22:07:35 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.203.90])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458704aaf20sm144977785e9.0.2025.07.27.22.07.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Jul 2025 22:07:35 -0700 (PDT)
Message-ID: <9ebd9797-8d92-4799-bb8d-59a796e6043c@linaro.org>
Date: Mon, 28 Jul 2025 07:07:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add
 LinkStar-H68k-1432v1
To: Erik Beck <xunil@tahomasoft.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250727-linkstarpatch_v4_6-16-rc1-v4-0-0dfa7aa06ec9@tahomasoft.com>
 <20250727-linkstarpatch_v4_6-16-rc1-v4-1-0dfa7aa06ec9@tahomasoft.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250727-linkstarpatch_v4_6-16-rc1-v4-1-0dfa7aa06ec9@tahomasoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_220737_868814_3EFCBB63 
X-CRM114-Status: UNSURE (   8.85  )
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

On 28/07/2025 02:03, Erik Beck wrote:
> Add device tree bindings.
> 
> This device:
>   - Has not been supported previously in the mainline Linux kernel;

Irrelevant, drop.

>   - Is a single board travel router made by Seeed, using an rk3568;
>   - Has four ethernet ports;
>   - Has four USB ports;
>   - Has WiFi (MediaTek MT7921e);
>   - Has a real-time clock (rk809)
> 
> Base commit:
>   - commit 19272b37aa4f83ca52bdf9c16d5d81bdd1354494 ("tag: v6.16-rc1");

Irrelevant, drop. This should NEVER be part of commit msg, because it
makes no sense once applied. It is not even true in that moment.

> 


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
