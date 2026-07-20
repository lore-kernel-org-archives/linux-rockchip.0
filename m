Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C637C4452A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 14:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cI3nctNouvl5houKSlHCoVeoT1YMUpxfc7DnrddWtRs=; b=xLSnQjUK4cb/XE
	9f7rGRpxlvv0lkFhWJu2ZyANd4f6uRRVB8nLjBDqYoRgFajRoB0+yWL8LMsBFP8EPx/9l0GXTapDd
	iBKK8sccO0T3lTTc9aNuwBpsmHwoYm58WZ1nhG3YovGxk2LAagqLsfN6wx+WhOh6BYuyGnAw+p82G
	vcwTUkbda2C4rlNqB7gSW15sBgJbDt0XKhytN1C8gwLsV5oCndU7LO2pB/uY24pZO3Uzw3MAtKtxj
	mbR8xSQXqJNn92wBNlrDGuMoh10JtmHCPl38t/3m3lDXGPSuwdmjbh2I+Ujkn5FhMUHZGj1UMaV1r
	ynAuJ0xUusGnWshOogHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlowf-00000006xX2-1Fjs;
	Mon, 20 Jul 2026 14:26:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlowc-00000006xVd-1DbJ
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 14:26:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDrGFK2807784
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:26:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fu8B/rAcYwnZH6HwVWb262VzxFDwFSC5SL+b8Idx7l8=; b=AdAz0nkdh2cXqYbh
	I6xlqidMkwcIT46nOcXUuBJqGHYLNsV1wigP7Hsf2owQ4zRh3BURnwpJlMo6Obwb
	Y27YmmBAKcU45LLSPOhAhLTG2jvFHYfKdtZ6g6l6N10KACkY41cu6OF6UMJcJVLN
	W1hMK6VQTekTh7GjoXnGhcxzjmOrsZsnoHwHanI+1cFcZ74gbYAT9A84JOZrZbPj
	DN3d21Ho7WUon5JNiNGOC70o5LRrTDFdE44cD6Yz58I0rc/yr4x1NyLfq3vMidXf
	nyg9Ol/CguhD1BuFmGK5JlAjBUjDMilyBk7UsiDw0volFkLkLDdch7nskjko4EO+
	7Opszw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhgre9c23-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:26:09 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-9694e84752eso5835484241.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 07:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557569; x=1785162369; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fu8B/rAcYwnZH6HwVWb262VzxFDwFSC5SL+b8Idx7l8=;
        b=Ez+gtXwZMF5fyHgJdzyP5hs3Z0KE57vYPvNfcLcGJ9B/wE9+D84DuM/8bCwVcPDOkX
         XThrEH5vlMpR/aFMOvjDmXth18ZD/NdF3aGCwvvYxLBKydE9O+HXs++u1g4XaK/X2L4s
         yMcRXGcnzf5/R/aVB9ElD4WWAMPErIwVkpMRlGZrlLsnL8dqpeAAPnZcelppdwyY5+Cc
         fzPYRn8INUTXJSeBOmc+7tVaCOB0pla6TmS8RcE9Utoil+j1J7WKoWGbg+fRhWswVWfh
         GgWW3ggauhq4DGu9QqGft6KLgM5NG1y8wW40Pgu5Y2AdR5u398DNRRUMmDeoWX/19Jog
         vBxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557569; x=1785162369;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=fu8B/rAcYwnZH6HwVWb262VzxFDwFSC5SL+b8Idx7l8=;
        b=rRm2lf9JusNx+0IONNagihuRDhuGsnsRfcvsG5w601pq/c9CIQBZQML2RR+U26eMUk
         cu3DKwJuETgCVkbWJMKOVwX+MZXywNsnzmA+c8te8wbHVUymqeke2j8tEioOZj1WNxfy
         aM57S7CRsQZ5NrDrfDb+Ydr9bEzVaKXDnvoOorbL27THC72eBE3dbZsQpxcQCAcWxUOv
         AsHVf9hPPR0i8+XM1UV4a7Wsw24K605nPWFZa9divOvrMaJrC2SjCD+xVmFiJUwT3T7m
         mBeQap2UP6GOE5YaOBL9AXIG9cbe8T3jlLvr7DyF5Bu9/aHO5bcj8YwOeLqlYE6GNz0r
         4oNw==
X-Forwarded-Encrypted: i=1; AHgh+RqrW+unQe+wyfieAKbITpg8AJX4CJXVWCrF1DB738j+EAjto2PAabyDECq7DKc4p49Z7whdeXbIQLtCPlpjOg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxEkEiOz6I1v+19cDZNEf8jnDJXajFG+YYrMw57rABFVimQje6z
	N8fqNBI7yLDaX3vxbtjbRrYm8qjLOUmL9A3L/UvuVu0hoD+7Lx2rR9bl63mV81tjFKD02azSTKP
	loIDjnXVE+bHaDmX9dMQwFm2+rx3MK4SoTVoFGN26D+ZLlTKiNfl6LqCz2D4f//j47Z3ZGsbDvy
	8=
X-Gm-Gg: AfdE7cnUVuoHHUSY1YxuPnSpwXeDnw+TFBa8b6Qtu93UuEaRfHxKb+G2O4oeQVE8BSq
	nBvhADQvzGpAPd2eewu7Xe66QioTJNnuxHEC2csGC7fwHEE5p0UrghZJTBRfTqqwdpcq+xoH1F+
	Hf97SGJEpGpatk9iFfhNo4YglOXm8QaKC7F0Sfz1XN9HQAaOjPi777LQONWDtGvfFfRTMfJfBn8
	wiUkUPnjiYhtHTzX2JYrqiKnsQ8pr1xs2dRsTpT8AL5qyba5cMB6P7oJ2krwkv+AIrY28le+uMM
	WgwAg782Jv+99fN+0gdUN0CqXYxfbH1gDd1sSe9iQS9Z3xHs22u/4Xe6AuTWdypY7P2uebj7PjJ
	bH8z2jzA5wrJNVRcUFfvStMi6gUGlbnjfodv5DbAt6jYhW7Es0tWTQOBH7EyHMDeFp/g7mXuyqi
	QeBIb3U0Bf3uix6Q==
X-Received: by 2002:a05:6102:1487:b0:729:affa:70fd with SMTP id ada2fe7eead31-747534bf4b0mr3897220137.8.1784557568539;
        Mon, 20 Jul 2026 07:26:08 -0700 (PDT)
X-Received: by 2002:a05:6102:1487:b0:729:affa:70fd with SMTP id ada2fe7eead31-747534bf4b0mr3897201137.8.1784557568057;
        Mon, 20 Jul 2026 07:26:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39eb5019d29sm17048581fa.36.2026.07.20.07.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:26:06 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:26:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 6/8] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
Message-ID: <al4v_A7Cz2NBEakL@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-6-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-6-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2MCBTYWx0ZWRfXy4zCXqsMWfGB
 RDiDabgfpIrqzRIKIfCjnTGuTFR9UXH6sqWKM71TM5mO6+D0sx/Y/dDQvlQeKW/JdXS4DZPc9BY
 undWSWJbK4kfLvLRSdSpwf9UFBlQSIA=
X-Proofpoint-GUID: XP7FelWuaPNFaE4v0-fdlsOBsfEIzD6h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2MCBTYWx0ZWRfX+gP7NlHQMiiq
 LgocKLYOl04/KiblkRF2FIAki7NBzawZVu1wrJatgjBiRtK/ynsCJCV4MU1o+N9VClg0TI8eSwD
 3XGpkfoXseVoPOkxSnlTBoGY0g4xOZ8csQsOHt1W6JwuDimz0x1iEX/cgS0EJQ1vk+kXgsmKgqz
 FfiFxOVoQskM4wcEOn7sA9MgWLpFke1XHyAG7+ThsNG1z1Fccat5ws8QJi9d5p9GwvsG6lSvTMF
 i9dFA5UpNE/qcuO5rbNdoKb85Yy8cKbS1OTQfvjchci7j3zQsLjxkYwopyc2XfBWkaAFCDazC3H
 OBUZYKUyY9Sq7mk7WSwUkLYS9XCADXVirS1IKpnZHiHHElSeMEJB81KL5F4CNkRmsZ1emNZ60nh
 uvEsoGCWqIjVJHWcplgrg9Y7TA7RsBf9uLjGhG6oBhUxVg4YS+C+WZupn0voBM17cOqZ+Csobez
 huc5vj93Z4zHt04irXg==
X-Proofpoint-ORIG-GUID: XP7FelWuaPNFaE4v0-fdlsOBsfEIzD6h
X-Authority-Analysis: v=2.4 cv=foLsol4f c=1 sm=1 tr=0 ts=6a5e3001 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=J6eIceq14uCgUkEHA5QA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=zZCYzV9kfG8A:10 a=TOPH6uDL9cOC6tEoww4z:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_072610_435586_497300F9 
X-CRM114-Status: GOOD (  13.36  )
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

On Fri, Jun 12, 2026 at 02:45:25AM +0300, Cristian Ciocaltea wrote:
> Since commit 6efbd0f46dd8 ("phy: rockchip: samsung-hdptx: Restrict
> altering TMDS char rate via CCF"), adjusting the rate via the Common
> Clock Framework API has been disallowed.
> =

> To avoid breaking existing users until switching to the PHY config API,
> it introduced a temporary exception to the rule, controlled via the
> 'restrict_rate_change' flag.
> =

> As the API transition completed, remove the now deprecated exception
> logic.
> =

> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 42 +++++------------=
------
>  1 file changed, 8 insertions(+), 34 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
