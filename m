Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A6BC4452B
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 14:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koye5Fvsy4W1GaoSoZalMx/lkGV70mw6fHeZhIF1HsY=; b=T1HZwCf6zbiIHY
	4bDHhTWK7rCA0/DeAwZCWZ3G/x7rXG/iu7shLOVmuzGIJgrlISaqhlOJFWyyexzEd4sfDdZfpbkMm
	YQ8QsGYQqCLxKDFXBnFEmvyne6C3dA0mQh0OQfEgbK7J/pfWc3Czd26w1Vo9WqbRof4k01sr2Blt3
	nCbuQKzP0bLIUSyElcGQ1pIzfXSu/q4uCRQxEtNhTIaccuIVfC/GOh6Q3oyfqIlrlqwFooIHRk2ze
	hBhlBpUue0ShgkOOyJ136+UOe3SHU3d1fBVnmwXBzCFSUPyqe4IFHdtz6KMNA70mhZ/HNLX/el3QT
	2hCK7v4ukYX9ePGun1qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlp2C-00000006ylz-2L0q;
	Mon, 20 Jul 2026 14:31:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlp2A-00000006ykb-2BB9
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 14:31:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqZY72498883
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:31:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XVVBJ31A6FbKsFlgxmXSOPAtuGA8TxPtOacCBKqwyhM=; b=V6pIIHGM0seBO1ic
	X+CnzBsSRPjH6xnkOdQ8UYvGh7BixZbGKrh6OlPhq6FqhL+vnOb1c2lcrUgDPS9w
	zwatz+mM7TqLOSkr0toRwd2gav64hHxjynCDuNuDYBCFRk90zp18qayTF/rYCaG9
	QbvQ8dcxtE14Hvtupigb90qF3O0+405yVAxoATSzvs4cUFol3N2SP4d6yQeHo0bI
	mEHk3fRH1vi7V3at+4H1UrTu10l5wZU1VCmiSHY8vJI6gGGCpnKWP3Wg03QW0d5v
	ZcDfOMlkGj5ioqm0BuTU/Zy4VA7zMZ6jqj1vsn9doC5yLBiE45u5DgP0Qj4Iyacd
	/5Bgbg==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhh5y18wd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:31:53 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-97702191344so3070705241.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 07:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557913; x=1785162713; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XVVBJ31A6FbKsFlgxmXSOPAtuGA8TxPtOacCBKqwyhM=;
        b=JUvITvhe7aL/PjPrS5A9ZNse5wEaMwnaOokTZSM8Dr/V8qIjTYPg+cuBRotaL8ESe3
         3aP6f0251XnaB1w9j/xNWIrDo0Id0Tc/vwfXU5+neAbmkmHQ4NlgNHESTlO3VQ+mg/vd
         dBDEPxOxWayVC8B3tlhw2jz360OldbwCr4c5Beh5qsZYUOgN7VzppdjMGLaeehFoKQyZ
         pW2cNRmGP6qg/S5OVe/Z+k6OaQkBmXsXPaJEJA7TfmCm4IJVDqIFG3Wx8WR6zO7k0E3c
         B4bXusJMHUA2g4ydAxY6a10JOMRK6ZHmYsnuyi4hMu2SunhKE5C0AoxkE4q+ObwPw7ZF
         7YzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557913; x=1785162713;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=XVVBJ31A6FbKsFlgxmXSOPAtuGA8TxPtOacCBKqwyhM=;
        b=r32BdLEJhVFuMA0+8vi2j4uxd9DMbCuEliGbrm1YMODXnsVNVXQ7qQEe/9SvemCS+k
         Yu+WEEyMbBYrNR1OrEkHPeVL10ZWgQUkwKHkXDvm4giedYPLrI9J1RHT1H38GJEP69Y7
         hjIKhMtiO/6YzsxHaqVDRcUSGsfjksO3V4/U4YKYnB/7uQ0HrNERJ6vM1bmCDxq8b+0U
         4QS1fM86ikNVApeLySYA4NYNwEqSdEyyXP2QIEZdCDLCcrmHOLSExFREYFCKvBzgA6KZ
         G+Ku1LObXzZhWOgCuIvCQJtT9KMC4jX2onYYuBTMZ5tt4TC43OG48cs5uS0DLL85tAnj
         zvOA==
X-Forwarded-Encrypted: i=1; AHgh+RpRGklSsFDoUNCD9VJily48Mwr1WYOFagQwaYryKn8G3Bb7ApXeLZGoslk4zp5bE+plHoOJuvnYvQBv3XzAYg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/NoMS3q5Au/SxI08Cxdt58dxylCDVYKR4IDaNH13tjt0yw63K
	7rfz+1Twm6o6k+D49nfxH9V4Xa0eFpi4JbRNLtDkhxypb4wKI0USIE/I7nZi2VDqOUbVSHA2USi
	AIsi3TmG8gEaWp5sbe2ykanJloc4/eu05IJ2IbRjWbl65byG254GQPHMyMDmjqhI7MvaltzMus+
	0=
X-Gm-Gg: AfdE7cnbB94h5a8ID73Ty5ll1l9Zvr6lc4rHUvb7CpvNhqZIJG/ZzXommLYJ5okd6dX
	Uq3lo1TaYk3Q9o8JJaOTGSCY5Nyf7BYvUE+EePrnboGQV98fptGp4/GKFkbEWgXL113rofn9ETb
	eKlqfbqzN4n8tqER+ReNDCgzoGjiMNutLU0NFDsAtHIdEGEMN/XIIOgYxZsDsjMAAmH/cAOmMuO
	4imK8JmKYCwfPbfHD3g73HAtfwjt/8yzP2fk7ieuaWHqWqHYptCkyRM7h+Tni94v+b9E5pjLget
	de8DK2Px7ABJgnCm7kJEUk4DXYgP2ILcb3kX7s15nqQSv9zQM1VW+tnwO5WoKaJG76GPUZUvdsY
	ANNBeSibtWNuGApJGm4jdtI0j/YVF0PRlRIvTt04aTSjq21xoYj8qLAx/57IuU9v4fQDlZ38fWI
	CapDbLB+o6zA0WRA==
X-Received: by 2002:a05:6102:3e12:b0:744:cb59:d6e4 with SMTP id ada2fe7eead31-7475373fae7mr4340476137.22.1784557912706;
        Mon, 20 Jul 2026 07:31:52 -0700 (PDT)
X-Received: by 2002:a05:6102:3e12:b0:744:cb59:d6e4 with SMTP id ada2fe7eead31-7475373fae7mr4340446137.22.1784557912168;
        Mon, 20 Jul 2026 07:31:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e297ecsm2333411e87.82.2026.07.20.07.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:31:50 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:31:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 8/8] phy: rockchip: samsung-hdptx: Consistently use
 bitfield macros
Message-ID: <al4xVeMXTmjQeMlp@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-8-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-8-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2MiBTYWx0ZWRfX89/jevzBE/qM
 ZbfrE6NyFBvI8Vl29nCJgzvBeUoTly4uzFYFbP8uLgNmjuOJfWXdNjEO14WDUFNIW0WTIUP5aeV
 dpwl9c9Wrk63B7qtUkxD1/qvsu7Bfew=
X-Proofpoint-GUID: sXPZRfp5Lva9MJ43KVnYNgZ8IF8q8R6d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2MiBTYWx0ZWRfX8Lhd9LBUZ2IA
 iqnyszPtfTVvXag3MXiZrjP4CDtdOUIOkT0G2cYQHitFiWzWpiqPqFvb9OCe7svgcWGLW4MeObp
 GG2/IExNo6hM8pkwuTQfXgQ3VzMu3u5sB9wupVz4s2VzL6jVK6OdGW8I73Nu2edMw/7XXwy4qkk
 IktcM6uXUqYJTBR7VL445yt/W5dE1bBjH6BrDme0EPCv+VFStZ2PkG2wfGZ9iTXULJG8ecwQ7tC
 TXAIy96bOarbQREtk+rUPSmqNqoe3buBOXEqlqbPVv5csxAZyO99oM6QpbqTg4retC5TyzsLbgg
 KXc8fx99EvwflU5gP60MnHHOdpbv1bweBzEGPNBFPm6WcBc1oWYdf8bH/XchwQcl/cEJC7i3AVy
 DfKLh+nMCKKwxw7Z0/6louli2sbDKRbQhOUbAeDFvwqdJXCmmrRtyabDEoOxgt+0JUB8NTSq5+F
 2dR86jeSDD2DRXNs+oA==
X-Proofpoint-ORIG-GUID: sXPZRfp5Lva9MJ43KVnYNgZ8IF8q8R6d
X-Authority-Analysis: v=2.4 cv=f/x4wuyM c=1 sm=1 tr=0 ts=6a5e3159 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=I81vlq0Cx9dIN7l1fGsA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=TD8TdBvy0hsOASGTdmB-:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_073154_562225_49905811 
X-CRM114-Status: GOOD (  12.80  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jun 12, 2026 at 02:45:27AM +0300, Cristian Ciocaltea wrote:
> Make the code more robust and improve readability by using the available
> bitfield macros (e.g. FIELD_PREP, FIELD_GET) whenever possible, instead
> of open coding the related bit operations.
> =

> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 30 +++++++++++++++--=
------
>  1 file changed, 20 insertions(+), 10 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
