Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC4AC4452A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 14:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cC94N5ARlyL0KdJD82Rrhq6mQLtquolXmHUdzG2h59I=; b=U03IthubN7+b+A
	PAynYLIU/krawfnr1YYVTxf0x5tjgMMtSTx7VLQbzxHKYo5qPhS0YcC3ZQRO+tUrEoRWcSZc13Wrj
	rhGqkBhFVQRRCNwutiodH2wZyZOhIUPHrqsbol4+sUfTko93e21UkA5rGBZbJym4c808QF0CtCmD+
	1rpbtq32l9iVKpLW7LhjBsugidkWXaiBdfObABoPmVIsWmWdAfn4hG4RtbGj6MTUlLBCcaE8At1uw
	YDSth8oC+fMJ+W32Q3CU4czImmkH3Y8KvTUaqUqwbWa0QAtzVYiYHseDeDvM0j5b7WysIVBQ958vp
	RCnHX1m/JBZyb07MJhlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlp1I-00000006yYR-10nb;
	Mon, 20 Jul 2026 14:31:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlp1F-00000006yXB-3MkA
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 14:30:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDr5vf2965749
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:30:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wi8nWkpM4EPvZH/Ahz97hAxk1CRSJa/tutJQGZBgZsY=; b=YBR264JovU6bj+n5
	ZZIsKkJr0jbtad6tDlASI5VZ571TIzXlD18SdiUlw0eRlLgkNWo8wUq1ecZHt/SL
	roQqX1miRKH/kQF+RWnlswyXD4lyvsfT23CmbUMIn9a3+d5PuefpLWD3KxIGMKfj
	1hxZ6o87eclAgutH21e5/jvkTChbdOzYYXJVg12KtlQxe6sClkeaDrcys2M1XMdY
	QCM8BxXtqpnI9KpoaEwgbUtymxkn1kY+bHGPfo9senkEYdjXOHIcpujDFG5Fdx72
	CQ8mncISntyGT8YRZwKueoNmQ5TxrqeSNpYSvriJObMvfaKRgkjgtT598DiVsBks
	hXKOCA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhfdchsha-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:30:57 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c1b4d961dso73117781cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 07:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557856; x=1785162656; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Wi8nWkpM4EPvZH/Ahz97hAxk1CRSJa/tutJQGZBgZsY=;
        b=HsBT7G+RuA99gNHclVRZAb4FI8FZwQu2nM0Lxb2YqeeRdwkX0OUqfiH46+AFo2+clx
         K7rLRJ/uiob8vU10ZLrOajyBlzxrL90JPYd78H/pcrdZghAoy+bwbkSTPCn/JRgPbVA6
         h1mU1/Q9seunge+UduEpqCi4vbYzRDa1WzxD/J1O60DZSIP/YRmcdek2vquq7iuvu2ZH
         k89ZIYJjB14R8dfx1xdyEyat0FyBF+ISywEfxwcPSfeuLk5vx83Ed6HJgfPDM/iFNZ8S
         N5vqaY+GjqIMroDO0AbnJ3RN94fVyizfYOeBaC6FmI6YghLm0/XxjAi0W77FqOfWzkD/
         ObRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557856; x=1785162656;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Wi8nWkpM4EPvZH/Ahz97hAxk1CRSJa/tutJQGZBgZsY=;
        b=SHq5yYD7QbCCrJrigBsLnMGv5+XqYaI50KhKxIoiptvazszPuhyFuoaDlm5WODeHeN
         mP8XSGuyf/jlzsvOooXv3b4ABiKP/qgQeGqVACAG3FY0i/IhaCqCllneYHQ1UH0Vwktx
         JpoXnOz0jhwd/IznBblglRvpyXAtx6xS17LYAAFiE13ClkSULl5wcSvR5eh/Es3Hk2I7
         XUB1ADv3dp8gNgh4wJRoCrLFr29vnxnMnBmFALX/ojsZaROzWMpQe2MOUWCl8Ba9xYMk
         UZ2tGhye74GN4Ec6EAGczC3FnhRMX1JtZ2ncqK7sluxvKhgSSrBSAmM1LSheXUTbhMOt
         Zu4w==
X-Forwarded-Encrypted: i=1; AHgh+Rol05lAS5qAL9jGDjWRUug3LNLUuFj23y7wSQax0zHWF/XCUg+EmDW4aioAV+9UlobzaymMXCsLX+y6NPVRpw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyeBqoFarfdtle0EMesMPQowMeMSAjbw45c9ydXJhCMaiIRep4r
	lUxfxFUtKiGSZVdw5cMHWRpJPPYmsPfC4uOs15pxDEhhmXiwK3BDPmHLgpeTCWoa9yAeZOZ2jAD
	PzZS0t90LnwkzwKbqIdAMXs3LhDLnaPEHTzXV+79WGZhhvM8I2aZaojEZx1p6YRA3nejOTMiRGR
	g=
X-Gm-Gg: AfdE7cmsKBBNC2sI/bQdTmfNbuApRObBY69FacOsAvvII5VeJgNXGaQtKJm0hgvieLh
	IBceFkFuujekAea6AMiwH+mBNYJCcBQA12EGnsUJnGDPdTD7htEaq9QsAdTjkKE4lgQTAYSIyoL
	YF4oLmbY5kIENon0uzQjVCiQtltV3a2Psfg+eVtrTCebDmjnKW422BWQHZ9KXVsfCcbMqAijlLH
	UBDT06MRz/cA+2IenKRBv3biYNdvmPW0ey70JIQ4AGWa2Z4QAaL09G1ae6NlSbMknfsgGYTDpPJ
	buXZGIK+b07p+fTQguLOFFEYbcHEHyveE7aa3CxOyjUabzXqMYUPcB9qPZs5k/cLky22bOYUPkb
	rTT74+AF/rFIsqElcG5sU6ANJ/SUAx1+DvJxI3rSPBxmDLtt7kmIUUCKeuvNxSvCfUPHiD/51yX
	c++DeluaJotS1uQw==
X-Received: by 2002:a05:622a:1b23:b0:516:d83d:b28 with SMTP id d75a77b69052e-51fbf8ba886mr173938171cf.17.1784557856154;
        Mon, 20 Jul 2026 07:30:56 -0700 (PDT)
X-Received: by 2002:a05:622a:1b23:b0:516:d83d:b28 with SMTP id d75a77b69052e-51fbf8ba886mr173936141cf.17.1784557853828;
        Mon, 20 Jul 2026 07:30:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291d98301sm2365292e87.25.2026.07.20.07.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:30:51 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:30:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 7/8] phy: rockchip: samsung-hdptx: Simplify GRF access
 with FIELD_PREP_WM16()
Message-ID: <al4xGODXuxs_DQwg@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-7-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-7-ce5e1d456cda@collabora.com>
X-Proofpoint-ORIG-GUID: qgbUiR7ee-nwQohoy5u6tqgxPRiYCC8a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2MSBTYWx0ZWRfXzDXzG3GiKaP8
 9ad22uA9emArustcNtGy7DCDTgjXe8Qalfzhn43zN/egUKXPKcI19e4rQapK+Hr2rJA5RBsM5Yp
 yFFrgkp7rO/GURC9VC7JIeZ1ZEK4JSxOkNO5nCIns8g8Ui6dKuG21nDWQ+6ceeoVi3XoD+dS8dm
 kZ/Cg1RCJDfR3rvCc2mDsny/q8/a9k+IDDFFz5YktXNSId8MjRIa9WB9cOXwQA/B+JvxAVSRkkm
 aqI8EHOujbP3BNH3aKLq5Pm0h182HA4yXzvqoTJDn12Pr08H1alN6m2/i1lElAOMWW0zBf3cicC
 8KCv6uCs1EnChzeIch9VrDUoJ9XZg0lUlO5cI+v/a19FtCIQ3W8NIX/sRBHUmFGKz51NC4U2yD4
 cBngZigkbTR8VHKZR/uIeYWB6cey/bHBKEgIvJB7f688wte+ZUgsw6BPqVsr8rF/u+r5I4jhJ9/
 cAZfKMRUlUxfr83itqg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2MSBTYWx0ZWRfX9ru4n6pKuv+n
 bKNZyDp5BamSvjQxS21T2wTtiW/OJnTlyjsLMX8BAD9r4uWF9Ic1FyX7p5mkuwpnq4SPvUEYaNn
 lUa0KDwQETMyTprT8ZnKWL+Ft6+cRgw=
X-Proofpoint-GUID: qgbUiR7ee-nwQohoy5u6tqgxPRiYCC8a
X-Authority-Analysis: v=2.4 cv=bv58wkai c=1 sm=1 tr=0 ts=6a5e3121 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=EPngckNM3keSbOuRnKsA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_073057_844619_E894FC8C 
X-CRM114-Status: GOOD (  12.81  )
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

On Fri, Jun 12, 2026 at 02:45:26AM +0300, Cristian Ciocaltea wrote:
> The 16 most significant bits of the general-purpose register (GRF) are
> used as a write-enable mask for the remaining 16 bits.
> =

> Make use of the recently introduced FIELD_PREP_WM16() macro to avoid
> open-coding the bit shift operations and improve code readability.
> =

> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 52 +++++++++++------=
------
>  1 file changed, 25 insertions(+), 27 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
