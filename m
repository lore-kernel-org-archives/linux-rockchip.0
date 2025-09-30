Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BDADCAC5B9
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 00:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYTU0tsJ6mMl5WhorD2CmXAcz7Pw6BqoOWUyPfX/1LA=; b=OTUy57bNplZsSr
	/3Xwrj0tr4MHWWuw5wrmYS6VVJ2ipR7zVuIZc12dUJzwivEwqvEYwfncRCHHCAuAHYJt4BQCzQAgE
	v9OkOFUQ4GF08dsma5Nh6AOLBdiivQMjbzPrR5uS3jA43LmbOGq2P/o450AJRyDq4qBu4DRtQlKdc
	eIF3js5nNPfS8sBsN38ODGd52/GiAhs199QuJRpU89iLBvZ3mJpnLNIBb+F2fQGAalTzcdO1Ryb7T
	k2Aa8jXKDgn+hBkH1eYKeuXaDjsaRqcJTmYaw8UVhSw5/LiGoYG7+rV6neZ4H5sroKdAqILgcchgs
	coMSsc2o0qXMJAb9576Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3O3b-00000003fS3-1GHW;
	Tue, 30 Sep 2025 00:17:27 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3O3X-00000003fRB-3Bjm
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 00:17:25 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-46e2e363118so51074385e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 17:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759191441; x=1759796241; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XdEC/q6le7nfUpMwS8QD1mrWIXjjaEQSmDLATI0QjFQ=;
        b=Mp0PCrgGNE6dMWm9p3Xmy4jl9RfRUN7ahNQDExVUYbzubD2nox1FB3lQ6RSD04rVxg
         mZ5FlYV37czSZg1FpZ+Pi+W+UL2lhNHByTmc05CbU0Ks4JRC0/LxVr4MM/m7OhhM4jj4
         zT6PdJLu1S8vt5pmlRPhKDa+5yLGmZj2G27skAdqz1gt7khAcg70a+OzdfW3n9Bo+cJZ
         DU3s0Ui9kSD6Tk1fuF3vGaYPNrwrzSLokFDV0Xeq7XKZgbDJBfeEaXL5+fVXq0eJb9cU
         kv1EdQbqfiGc30MKH/5tt20a+nbaapvheVPl+fl62HtWTw0AJ7wGZuOMcg+aQKBBUox6
         S4+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759191441; x=1759796241;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XdEC/q6le7nfUpMwS8QD1mrWIXjjaEQSmDLATI0QjFQ=;
        b=TuKyJx3p37JZRptk/fPzGYJzuwxls/lZp9p9dtgcq9YOIKv7lq6gEd7BpDON+Cs9vT
         0CU3Cq2Es+lt7nNKY3uzms25QXaqYWruvuk8iikuRKhbtGCtpYK8VbuNEXXUOygKo3ln
         q7YPSC6BVTbesNaumVHI1Nk0lEBrl+WCSR2IWL0gLaIYa1ViB+VWrPUFVg8euYFGoBLb
         mslO5MXGZAASnW9jwyEwa7Tatf2isMzf2v+JEc+ee2QoEPb1ndYGGcuSXlHyI1518nV3
         TzVYaBuY9FPy8Ws+VPAoeH2hAAuHHBWqyoTiD201X2pMDG/0v5pkOP8TRCflaDunQbre
         80bQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6WETyJv+7f0dyv2My2rYChcE8wTSWqn0uCuNEhsJbXLokOATSv/Owl/byPKP9Ys9cv1Nb1oWbaTi3fD8pxg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrCHKuk1twhq7OUUKdSXktoi5bkFmivLfyHqc9pQUUwHdf4Y7m
	uAoMoUTtcyv8xbJJApehJM04sctIMFUQjr9Pm2qKGFqdQgh28VmkevlW6x0QHrLxkb4=
X-Gm-Gg: ASbGnctKVS0k8UlDgSfDR4UkB0Eqj2krvvhXbSzxAKzUdDwIOJbTtKr6hRYLMo44pfO
	1tKKYSKzH0TbkMRozY8FsEEz1gRrUkmfO1xvUAe6gT4VOLdukSda4LuotxfT2yXZNgQyUTDUp+j
	S7nfPxhiteoNibTVx0+hn+1Lzy94pQg6y2sRVJmgsrVSnrbzoztOYZBLLcZe9mzuRypSCNCoF2q
	JB+YaRLGi2wMmqvCTTi8r5If50fZRo9ytPLm5OUxVcxOSiQ4iB9QDLGN+IEaTdAcrk5NbQKr8TP
	xOps0ZB4Lo5PuFqJqwqh8k+VwsUkB80UrzQidEiE6shimkKk99V8UOjovMKOOq2ZkVynZ52q8Jr
	2Iu1rHKcHvPUvStduB5HTMO7kGy/OROjXRbiRvFlmgg5w0EYAhmKKJRPc4QHZ8/6Uh4cW1Kw9PI
	AAwIWw9Z3I2UiwHeLFShbeLRXABYoj93U=
X-Google-Smtp-Source: AGHT+IF1NvJ6A8YUVxkdRJkfeGyVldxLeh1qdvb50sqvC4KYOgmP95PhemeRL1E+WA4Xb6qkHy3wsw==
X-Received: by 2002:a05:600c:1d06:b0:45b:9912:9f30 with SMTP id 5b1f17b1804b1-46e329a0d0amr156323085e9.6.1759191439753;
        Mon, 29 Sep 2025 17:17:19 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996e2fsm266744585e9.2.2025.09.29.17.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 17:17:19 -0700 (PDT)
Message-ID: <3594bbc8-b063-4472-a294-117582f063dd@linaro.org>
Date: Tue, 30 Sep 2025 01:17:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 03/17] media: dt-bindings: add rockchip px30 vip
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>
References: <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
 <20240220-rk3568-vicap-v11-3-af0eada54e5d@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v11-3-af0eada54e5d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_171724_008838_6C4F18DD 
X-CRM114-Status: UNSURE (   6.41  )
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

On 17/09/2025 16:38, Michael Riesch via B4 Relay wrote:
> +                enum: [5, 6]

Not required but nice to have is a comment like:

enum:
   - 5 # MEDIA_BUS_TYPE_PARALLEL
   - 6 # MEDIA_BUS_TYPE_BT656

Just for the sake of a reviewer.

Either way

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
