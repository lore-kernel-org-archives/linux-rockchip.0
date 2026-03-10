Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EAC7C4451E
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Per9jie8LPuOthMfrdOml6y1aV3VB+lmoexK7xQemlE=; b=Lay8FYjcpvroDj
	4rtO/zPC/t/UkYu1BfvwHGiMlN9n63mKtKeMGbNz9IRmzbCskZUMMZIjr3WnIxp1rqkvsH++RAM7p
	SN2JW9khdB9PDeFPyMVPSiGID2nwoyDiXa91Oox843vqOom0/kOlEZG26ZBLKXvBUiHZf9y7ObU/r
	dEBkGCEWuqiU4hzBVdI9l8jrgow5LZxLAL13p7oYqmYUgiyhx4AtkPFO2D8pR9oFj8gUqkaA7b3Gg
	yHoRRf9yVN0c1dasZHQpmXRzRIuLjpGQI6np/NLd6yZJENyeEEi3tlzTR5bg1hW7OY06rX04yD72j
	1i+Bd7xx/DrzSROa4RCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQq-00000001Uuu-02aG;
	Thu, 09 Jul 2026 08:48:32 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzlei-00000008RrZ-1v7w
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 01:13:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773105182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KTWcRe1uEdBcdV3dSWnFRmmQqhKcuVtF4VSklt2P5Ak=;
	b=YKqpgBRqzU6/woYLWvlnaDi48LqZXMvagw3mv3wZaH3qRByYY+qpfCc89h6QrMjttghwEr
	E36QisgUyR+a8xiodFb5SK6LQTRLzfI1N0T2HbTq+yPNKoX7NANAzUXlijCrng0ceKFmrL
	VU3O7BHLMx4IZqdnN/LLK5so2xMlFzs=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-433-unx-SKL_NTuFq-XNaplNHw-1; Mon, 09 Mar 2026 21:10:47 -0400
X-MC-Unique: unx-SKL_NTuFq-XNaplNHw-1
X-Mimecast-MFC-AGG-ID: unx-SKL_NTuFq-XNaplNHw_1773105047
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89463017976so858627206d6.2
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 18:10:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773105047; x=1773709847;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KTWcRe1uEdBcdV3dSWnFRmmQqhKcuVtF4VSklt2P5Ak=;
        b=EbXOjA0tPk33AvxAnYZsHJpugQ6HBluSf2+xa28w43wvXcSgZdlJcZ4OXJLtgeZIc0
         AB+VYZezycOVcKmv7tcPZCBlBAuvXHIJS4Q+b1Is+aCDxV2vW0nh94CbXJjWDCjZNMb1
         J1UOzNbyXMdll9H/gTgWSWgONOyQ2mrCoBRPN/W0JweQmhgpJq8EqjAGVyt4JDVt1voG
         AllNmiAW71wAvDBdNNg65+m98BC9mIMqYX9gWfbPFLx2h/1QrTOmoCUD8G+Q7u6ndR9g
         NAx2XZG3JKfjzsr1tSHFv0qmclCOkdgtQsnzr560/+XUQqQ0sQhf0DB9+Y/WJNzLM7W9
         K0bw==
X-Forwarded-Encrypted: i=1; AJvYcCWcqNfPSGWipdxAgZJ1i92fWf1MlyLwhGdIQDtD1z56tPTS7VZROBo3f6PQQrXw4eN0gzhRDaNWMTf9LD4q1g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxkoFIq0gK9a1jg0UyUKh0IJ/xMTi5/plwzwarxLJ8YMph7ADv
	H4DqYVdKtSdU6jvz1DEx2I1Y3DyDPqgdqVbPZQue8MidQrVwgQy0o/RMBfOpSTQlCvR4vUrnWIf
	ITDOq9V/FOedqXckUKnLC+Fo77/SwETidLey+DTEKUIoZRc0aA/YUbGR0pSzcStQPC8QlgQAI7Q
	==
X-Gm-Gg: ATEYQzy1WZ96QeNtvx7+uNZ1brPd+Wn+uIoMJVbStJIQpWByS0uAMEA6uJ9E9dl7RB2
	nC4zo+VKBEE9do210tfoLeB7ffZGIcLKbh83zYUtXoaWIVMgaCjky7eTGuiSNsVNrOz2KlrS6eF
	TxPL8ofcdQ/utapCi0N23MaAvDXFsdFrXYuYRHM3xH4sO9a/wku0ebvfktLMsTWWy+2j1zZPdW+
	F7lXBvgkPyQFjjJJQYbaohssukpYc50NwxIzm3JB09MrLH69nEq9Mg6a9Rcr1AQA7GMlRhiJsrO
	sfpgOWw5mlWPqCZFs59C8m5tJfQNB7a6DSzrKfQ49s9/KjZbZ/C4zYy5+8VBE7OhdLiqAqoaOpg
	jqc6ztKPEQwDS10xq4Z551yK8v6YnrEMWIgz7bYngG2F/UDQRP9YvsCa4oX6dF3ZhwSHdpybugy
	JnajYFYPGpXAKuYg==
X-Received: by 2002:a05:6214:d8b:b0:89a:258:c1d1 with SMTP id 6a1803df08f44-89a30ad1c78mr197365236d6.42.1773105047119;
        Mon, 09 Mar 2026 18:10:47 -0700 (PDT)
X-Received: by 2002:a05:6214:d8b:b0:89a:258:c1d1 with SMTP id 6a1803df08f44-89a30ad1c78mr197364236d6.42.1773105046575;
        Mon, 09 Mar 2026 18:10:46 -0700 (PDT)
Received: from thinkpad-p1.localdomain (pool-174-112-193-187.cpe.net.cable.rogers.com. [174.112.193.187])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57a18252sm10681656d6.10.2026.03.09.18.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 18:10:45 -0700 (PDT)
Message-ID: <4728554b256f016d9a5f3e019ed831387b0f059b.camel@redhat.com>
Subject: Re: [PATCH net-next v7 0/7] net: stmmac: qcom-ethqos: add support
 for SCMI power domains
From: Radu Rendec <rrendec@redhat.com>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Bjorn
 Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Richard Cochran	
 <richardcochran@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>,  Paolo Abeni <pabeni@redhat.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue	
 <alexandre.torgue@foss.st.com>, Vinod Koul <vkoul@kernel.org>, Giuseppe
 Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>,
 Chen-Yu Tsai <wens@kernel.org>,  Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Matthew Gerlach	
 <matthew.gerlach@altera.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl	 <martin.blumenstingl@googlemail.com>, Keguang Zhang
 <keguang.zhang@gmail.com>,  Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team	 <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Jan Petrous	 <jan.petrous@oss.nxp.com>,
 s32@nxp.com, Romain Gantois	 <romain.gantois@bootlin.com>, Lad Prabhakar	
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, Heiko Stuebner
 <heiko@sntech.de>,  Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto
 <inochiama@gmail.com>, Emil Renner Berthing	 <kernel@esmil.dk>, Minda Chen
 <minda.chen@starfivetech.com>, Drew Fustini	 <fustini@kernel.org>, Guo Ren
 <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,  Nobuhiro Iwamatsu
 <nobuhiro.iwamatsu.x90@mail.toshiba>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm	 <magnus.damm@gmail.com>, Maxime
 Ripard <mripard@kernel.org>, Shuang Liang	
 <liangshuang@eswincomputing.com>, Zhi Li <lizhi2@eswincomputing.com>, 
 Shangjuan Wei <weishangjuan@eswincomputing.com>, "G. Jaya Kumaran"
 <vineetha.g.jaya.kumaran@intel.com>,  Clark Wang <xiaoning.wang@nxp.com>,
 Linux Team <linux-imx@nxp.com>, Frank Li <Frank.Li@nxp.com>, David Wu	
 <david.wu@rock-chips.com>, Samin Guo <samin.guo@starfivetech.com>, 
 Christophe Roullier <christophe.roullier@foss.st.com>, Swathi K S
 <swathi.ks@samsung.com>, Bartosz Golaszewski	 <brgl@kernel.org>, Mohd Ayaan
 Anwar <mohd.anwar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,  Drew Fustini
 <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
 linux-amlogic@lists.infradead.org, 	linux-mips@vger.kernel.org,
 imx@lists.linux.dev, 	linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, 	sophgo@lists.linux.dev,
 linux-riscv@lists.infradead.org, Bartosz Golaszewski	
 <bartosz.golaszewski@linaro.org>, Krzysztof Kozlowski	
 <krzysztof.kozlowski@oss.qualcomm.com>, Konrad Dybcio	
 <konrad.dybcio@oss.qualcomm.com>
Date: Mon, 09 Mar 2026 21:10:41 -0400
In-Reply-To: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com>
References: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: LHiNNZCZnDsh1UDndtLt_tJAimSDrH_Mr9avDO9UKOU_1773105047
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_181304_594501_419B1F03 
X-CRM114-Status: GOOD (  13.91  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:23 -0700
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

On Fri, 2026-03-06 at 16:46 +0100, Bartosz Golaszewski wrote:
> Add support for the firmware-managed variant of the DesignWare MAC on
> the sa8255p platform. This series contains new DT bindings and driver
> changes required to support the MAC in the STMMAC driver.
> 
> It also reorganizes the ethqos code quite a bit to make the introduction
> of power domains into the driver a bit easier on the eye.
> 
> The DTS changes will go in separately.

As Jakub pointed out, it conflicts with the latest net-next, but does
apply cleanly on the latest mainline, so I tested there (on a SA8775P
board running the SCMI firmware).

The two NICs come up as expected. Basic iperf3 throughput and jitter
tests look good. I would offer a Tested-by tag and a summary of the
test results, but I think it's a moot point because you'll have to
submit a new version anyway.

I will wait for you to rebase, then test again and come back with the
results.

-- 
Best regards,
Radu


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
