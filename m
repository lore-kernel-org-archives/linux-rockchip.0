Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD9FCD4F54
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 08:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ga79GOIaqcwNBWh9gSoBSr+0t43SYpV0beJsugF/8mc=; b=QObGrI+mBM41GB
	TicbCfCzRJ9UvzgGZg68puLfGk7R2ijiAYk2uj/Mulds7bGBmF105JYeL2L9EOilMKSVSYzHz9ENB
	/HZQjhwELRQ4V8Kuiv7UKZ8Lfvn+3ZHDnh3DwWhjwFC84R1LGFmgsPBQr+YSKgamUq8IfSv00Oq/M
	Ex9/02cIQTKi+2azvIOKxUHVTtddpO60JcpfBkm/Z/iNttCROylulsXNP6mbgnP4m5pAMhDvjQPaz
	mFjr2ZTEQfD4i9v4e0tiGpwJJoS+vr7hHrhiBQd0JIo3O7q5dji6nvqZmww6saGdU5xVmV1rTxgaz
	J+7oiIBwdqYC9M0zpsgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9SY-00000003WxN-3beo;
	Wed, 27 May 2026 08:17:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9SW-00000003Wwg-1A8Q
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 08:17:49 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64R8BE7k794310
	for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 08:17:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VlDTUSZSL9yEYzzXWBCrB8EeTzg12q8rDn+nYTVfQ90=; b=Aex/DVH7ew19a7yk
	wurAUeH3Z/oh4Bo4Yyb45HQqBXrRxanPWx6IuePC3tMxxxmjX0/uTsjhl51TYbih
	O9XHAL6G6uqKQwmrTtAOk1KRVwGfBUMhQPVuOEJ8MAVU8bhoMZmVN8xzgCZ73n4a
	Ywc5N3YkmJoWZUUlHAkJUYEjGqP+fANeQNQ1kS39Rvx+zps6BrviafLvpFPrwSmw
	TWvNQCeeFjs2+9NgCfTvcPBQFHzQbsVQuWWZqfC1A7SY5Bw2pA9nm7mtYwVfZxXk
	aU+xrOC4fpXWFl9jfpG9eeUuTBMV2lrfcF3RB3j3b6v5f3RLRPyIBvVz3q4VeCQp
	z3twjA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edvvqr0wr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 08:17:47 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50edf01172bso155360821cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 01:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779869866; x=1780474666; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VlDTUSZSL9yEYzzXWBCrB8EeTzg12q8rDn+nYTVfQ90=;
        b=LIGrNNzRld34NXnL6jU+laSVo8vC7ClzUfxL53oEI6hx28seJdjmURdUgVpvSs9XGz
         p5X9DLtRDgK3jqyhICuhLQMuGgTfWAX921or4/1ZlJXqpL7n4zFlnn3n4ziD3sN4Ke9d
         Ms84jdSbizxQJ3hbAamu0+F8s/FgeLiovw53s9X59WhfLokPhc6GHWN1b0WvOpDPXUcn
         LinCUS84slLlq/JfEb3tiGbw/RD1sdsfQoIzNNXI9aILlOHF9RsRTa6LYUeC2YowYLrr
         vv42/vgqRM/tKCDBvQNRE104b3bttL2z1a5UoZkTMWamk+JG0052Irmx7bOvPYZuifLu
         +Ggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779869866; x=1780474666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VlDTUSZSL9yEYzzXWBCrB8EeTzg12q8rDn+nYTVfQ90=;
        b=VM/YXAnBWtadaDkGw6R0yCC5Dfr3/4LL7AzLdjTc7QBd8tFoS0Hc7+OvzNqxOukKOJ
         gthOO1g8dpEkUpbFVzKjDyRj/7WATSVjH7VOIk/RYOlx2LlxKQ+ZS2Tz5QjpCZfTo3St
         wGSMMXIVS0h71F2N6xIaRmTCPY15GKplrTfir6XfeJx+mUZ/YO0Zb7N6PGELGxa/Ktk4
         6qZtxSfovB/c1H7SwMeqKaANPHXnQITR5ZWrdepurel9WcBUB4+rewcnvdyQJk3Dke8C
         VXO9f97Mj/68LC0Da315nHttNOCR5jD5xgD2UGlzjoMFS0/KEFx5bG1fiTXI9YEi2SM4
         Qc4g==
X-Forwarded-Encrypted: i=1; AFNElJ9Z4fRV/WlyIZgOzlAqMIwuNMFSRn8+1LC3066jl05xQ4i8UDt6QyqeNOMoi023FoJ0UZkSos57lly2n2Ekvg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ+Mhh9C+SOxWBHJfupC8jRp5MU63xiJVMai5atd9L1iqZ1bFF
	frfkQH73h4Gk26cEG3Xvwzuz9au+yI0llFalR2C7jFKMualiPtt+Pki25Ew9QmCg8x0kQTPr7qW
	/mQkbw+NRkBUEScqxI1ImA8scuUhQjWwUEU3roEju9kOgO604YVssitlKsrp5eTW/g8ChTK9FZk
	g=
X-Gm-Gg: Acq92OHj7XGMyoXK8SgaWxhcY8uIy6QWZdfXvGiV3tNqv7emJwl3sUPyiAmHoRFT1NM
	qH0PSrIhmd0jx1Cr43wkc/vx4FmlSA0fuqLSkBNy1QaD1zGVrJyt7cnqy53qO4b4RQzFIpXwvgo
	GlL1bTOCjHrQCnOjUKIQ3zVM3Ih7N7QV5XY5wJOcW+WrCj0PYVPsqT1J4b8r/6UbMnwg+zowpzY
	60GtXRLarM6h4YiimnBnj577l+Yg/3HqucI09YUScYNDXgUymoAMjHik9IlNO9vnJjPXkgWmqhK
	y/qE79ggHGX/W423HHESSevF85LxAs2fpsasKrfwY+pKc33uN9CKGqHRQBD72JKtumu//+UKxgl
	3MKRy15JiGceguauhcwNDIH1UIrFgJEubeEkyCIU9Dzs2WvXr+BUeuR+FVI0k8xecHHH/MzdhHG
	QzRB+juTZS7cpBbo4xwQmNF4qnZgTwk4zATZmMRw4=
X-Received: by 2002:a05:622a:8588:b0:50f:de06:45e2 with SMTP id d75a77b69052e-516d436f402mr240966671cf.31.1779869866436;
        Wed, 27 May 2026 01:17:46 -0700 (PDT)
X-Received: by 2002:a05:622a:8588:b0:50f:de06:45e2 with SMTP id d75a77b69052e-516d436f402mr240966461cf.31.1779869865924;
        Wed, 27 May 2026 01:17:45 -0700 (PDT)
Received: from brgl-qcom.local (2a02-8440-e500-3194-8c70-1be9-4d87-8bf7.rev.sfr.net. [2a02:8440:e500:3194:8c70:1be9:4d87:8bf7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4904561f682sm403458845e9.13.2026.05.27.01.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 01:17:44 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: brgl@kernel.org, Marco Scardovi <scardracs@disroot.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        heiko@sntech.de, linusw@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] gpio: rockchip: fix resource leaks and teardown bugs
Date: Wed, 27 May 2026 10:17:42 +0200
Message-ID: <177986985872.16795.8547602828633072606.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260526171050.12785-1-scardracs@disroot.org>
References: <CAMRc=Mfk9tP091DN=5kjb8fvFhj1=MiBZSq4NJ7+k5LNCVy9bw@mail.gmail.com> <20260526171050.12785-1-scardracs@disroot.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDA3OSBTYWx0ZWRfX1o0IQOe2mAmz
 Bje7FySqsxPkwIUVG8b6uyMguwNAT+cuzd7C9x0ZxXugEw9wrH4TpvOooc+rR7wsR4wOn1jagxt
 SkUcx0geIEdk7Za4CGK6MUdYoyDv8qQwvJUKQIMcz8tnQWe05KjkrI80xxSFOXPy5ia84uGLIQ8
 ksEYVYm8nzVWUK9C+5DEQyjLTJphjbmHsWsF6sUXdBlqNebU76kCq5VESp0Ab9f5AhzT3fi/Eeu
 k1n7rjz9u9obwOxcU/ZrqHwlO5Cbo3HpGQ/3kcsKoC6e4G2xYKkm6fDro3gThqWGkk7sV2LFGF2
 azD4Rdc+RtpjNM8D6ruYwvexiwhR+Pt64MuJ/FZQcS/DsmJDTgl2ic8ADfI4xtMKY99mzbFZ8Qk
 UZx333mEbl7AnsWCMjsuQtFHkm7sXJzd94m/Zr+m22UNLyD9dknoNzSmv8P00Mm4ChcNK6s81K3
 Am7Yl2mltrGqM4GSJ2A==
X-Proofpoint-GUID: QAhKdN75NNQCzaAf9bACRACZ1rbpT-Dc
X-Proofpoint-ORIG-GUID: QAhKdN75NNQCzaAf9bACRACZ1rbpT-Dc
X-Authority-Analysis: v=2.4 cv=fLMJG5ae c=1 sm=1 tr=0 ts=6a16a8ab cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=-TlZYsTrXPYVLYuQEvMA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-26_05,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 suspectscore=0 spamscore=0 impostorscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_011748_436459_CE78007C 
X-CRM114-Status: GOOD (  11.62  )
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


On Tue, 26 May 2026 19:02:44 +0200, Marco Scardovi wrote:
> thank you for the review on the first version of this series.
> 
> TL;DR: There's no clock-names property in the DTBs for the GPIO banks,
>        and they don't expose a separate debounce clock in hardware.
> 
> Regarding your question: existing DTBs currently do not provide clock-names
> for these GPIO nodes and instead rely on positional clock ordering.
> 
> [...]

Applied, thanks!

[1/2] gpio: rockchip: convert bank->clk to devm_clk_get_enabled()
      https://git.kernel.org/brgl/c/d4573b270d934c35eb77fc348866384fcb4e8eeb
[2/2] gpio: rockchip: teardown bugs and resource leaks
      https://git.kernel.org/brgl/c/9c95f4b920e15c183ebbb15b0a011ba32fcb6d59

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
