Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C91DC4452B
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 13:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zbqpf/joGgS8zye/Da1U/7IteWhQ6BP1NYZjRPqcSs=; b=uvMuzFNhOg/y+I
	SNBms5PgXu5bL7iQciqTBedmlVC7Yr7ZXlWUll2lPTLKxXcUwbdi4HjOS81hde8KidU+izmhBwY5P
	Meujd5TvRLGFb9deb2RdQ/TlBSw01NTk3jo/Dsf204YKthJjpa1D8Jnqd3mZI/xrbD4W55K33WcOt
	BUDOWPNtqoeohOo+G9JQLpNav0IWxH3RbIewHQWup9use5RuGsAqZuPLoT8eh7npiv0F8/2p4gbPk
	3v7AvLKP19B6YL3QCCIsABOnogBIqU/Q6sRcJgh1eJqCpmvsphecN2DyjoXSo7f4DWj+VtJBbH8WB
	WJI50G38t1hO7UFvvW/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlnyu-00000006nZh-46Xh;
	Mon, 20 Jul 2026 13:24:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlnys-00000006nYV-11MS
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 13:24:27 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KAvugs2278289
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 13:24:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2rnuTTxS3dtHAIgoofax5iZiwmNO+2ul3JOTWMDYSu8=; b=eFxtgw5wut5B92w3
	RtZVhajGc7llr/dfSaSe83kq00XNfrpnd8/z4naj0xu1FB2kRE5ClT3jFInM4NUk
	OYC/SDqCunEnuJAXFLaWEamwJE+jF5XzAECMf0TH8KGT2GCGKsBD8RkQNevWqaUe
	SK29H3kDJuKVntvjF3xkn3T/XNJ0RV7v4Cai3cKyn1xib7zOJQVepqd0zgt1VCQN
	D3OTVNOlrhrltPMuOxNITi9kr6IQGWHxBm/b4Nhd3r82vSAGMSCSGnDWu/m7z2Zx
	I4Ku6WhSOp1WwCOM61lpaFPN07QxjYiAtxTHCypTFVRmvMibPCSx0+cK0rn/r8f7
	HoC55g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhf0c1mwd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 13:24:24 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c1c7f135bso140412521cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 06:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784553864; x=1785158664; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2rnuTTxS3dtHAIgoofax5iZiwmNO+2ul3JOTWMDYSu8=;
        b=DQMugsXOJKYqSp46+HQNvJQdI46KKu0cmkfSqgB3rfcbiPbPMsguqEBThY5DLmqXcu
         BsNyRiIdknDjxE8Ty3YoR6cxcwD1ettFxmDNeZUQQ/tsiZxpcR/emz7jxTLf8Ps5y6SY
         zJRjLNYmOZI7+u5BYFawc3HPiXjarMd68Xd78opBOjxI4/3ITVP9DnKsoFLkQRSiDbv5
         Dt9DWhUA+k6+MSP1iMvgR/JNxkLpquISZxbx1QQJztR9bMxA8SrVggDCugfUEi/3rSUL
         wJRANaFfsC0m4mdW3hPtxxHV8g1lKONpKp02vhqc1Hfr/gx0inSLpP+Fq7hpkvKAjkdO
         gqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784553864; x=1785158664;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=2rnuTTxS3dtHAIgoofax5iZiwmNO+2ul3JOTWMDYSu8=;
        b=LnGWZWZqp0GAYK2zDUZ4xag0UjdA+WH74eF6FVkB6Xd+AeaE1eIe1KLFY2mXLR5RGW
         0xqmQ4CzryZ/ep+iObEK7SYkrQ/GSU+5mzKHc4Xx/onJxNxqVwBZmP7Ln4LJ9geB5Eh2
         uB15qE66S7ZxybNuez/vq++dMBBM1iWyil6imsN+ir8/6BM8DeYVg6BA8eqtq/lfS1HS
         zhkq1RSGksVW1sXuNp6NjmDtia8r8HtD1mIl63x20d0FnSNCi6rtrJ1e8qGm6yqgtATl
         A0lBRWUzS+0XS22uKibX73YJdlssWTpqj4Tb8f56+FXH1kGy8ftH+1qzS0bcsl06/6p8
         aveA==
X-Forwarded-Encrypted: i=1; AHgh+RpCcINn0cGsCm1ANDASW1No1a19SIaknvAFX3O95UbkkBotk77hZpXiXd12/vBClXNquJk25zJJtD0t8YcOww==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVCyzsVm6g1gvtj2RiP99YKKfpheeF2DsNSC5XKTVKU/kinpVZ
	fIvLj1vIy2I9ve19HDCr7tKgCAWxt7OLFOz2TKbbp1ri8yiVmtH7cWegyOliwicci0b8KZkaKyt
	RYtAwvdHtTz7OEu4VZBcDiV2CAhvAk+qlJuHJbEEjg/ZnUNxB1+eXbyyEqE+CH6tYPPqVAsjpiP
	s=
X-Gm-Gg: AfdE7cnw4ieAQOcVnZQACBoIGbwdBiZyNXWcF0eAuFH499axL0FrUiR9XA2EL0th77e
	Co9n0vvq2GzzBXgFCMiTW97uwDWhgxGxMq1MQ5ht9tIBaJTxSIp8oan81Dy+OJr//LRrpQni1tf
	MHqJC9+y+/TWhS4CLcVB8Ul0wZXHihnZKmtpET1ketTAKeLu/YMMeXeFbS2fPtLInqwkpKDWCGz
	iPNRdsVuOqJJyPmAYyiOMgRNzrVzo/bI9aOoby0SJnYixwYh1XwqL5kRCOaEI32pc9lzIIhRCCc
	G8Gu69285DJzuWQhA+pNO0Gv2zpFCdTicBEy3yj5a8iqhzrpiWpKZWq6QQGoZ6QjbAAVJau7VdP
	6dqsJEOWHJ3oHrm4DzHhYMIK8tChV12hk2wQ9/K5wzvwpPZ0W0C+gYFIWM4xN7ER4VNWrOmNyUC
	hkiH+kSaqnrvimvA==
X-Received: by 2002:a05:622a:4110:b0:51a:8b64:69e0 with SMTP id d75a77b69052e-5213d2b7109mr130718361cf.11.1784553864349;
        Mon, 20 Jul 2026 06:24:24 -0700 (PDT)
X-Received: by 2002:a05:622a:4110:b0:51a:8b64:69e0 with SMTP id d75a77b69052e-5213d2b7109mr130717871cf.11.1784553863758;
        Mon, 20 Jul 2026 06:24:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e0ea8dsm2337558e87.41.2026.07.20.06.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 06:24:22 -0700 (PDT)
Date: Mon, 20 Jul 2026 16:24:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 1/8] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
Message-ID: <al4hhLKoufegMPAg@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
X-Authority-Analysis: v=2.4 cv=HeYkiCE8 c=1 sm=1 tr=0 ts=6a5e2188 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=LBX7SfcbrNp00noYVVsA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: oohBBBGzZDPsYRWxUUpQRaBUBQY-zBsr
X-Proofpoint-ORIG-GUID: oohBBBGzZDPsYRWxUUpQRaBUBQY-zBsr
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE0OSBTYWx0ZWRfX8cEMLG3aKP7P
 IZ1kC08PqoDpYpC/zpodX0OhA8+hU09cT3dDhZHqBkZufP3hnUJKksP5RQy3/+ehwfyjtPY859S
 qL1tI9Ms+IsLG5XsKmU9E3INfMiEWs0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE0OSBTYWx0ZWRfX2fo7Q191kzPH
 PrdzK1osmYTGsWZ4mvTPyIkw9w9ZrCgyNXmSb10NMW9mxitoSEltJRM5CfQU1iyJmwgmQZ/Bfsp
 7Hlc3FB/3vYDNUQvMh4dohtcpD21tj72jJxzdanEtYoSq9uLDi++ZGm5zxvnoOClmefIA/ILISf
 bJKCQ6YgTRYADQMFHuHBr25RqM+taHpJQWv1/jQGnuKZyCoGy9rm3wHDuhU8rQ64/cOogUPw0yp
 Firy+acYy19sp8kgmiXOR0m48yLtFZkp+2KQxLpKgOiSL6jNYLZ+dG0AAnhVmErueAp+DVQb7oM
 AA2hKApuxKM4eIRhPaOi6DPhGGd0tbYv9IOwLLvmBogCRfoKfz4HG5FR4OMuepNMmUdiGTbLzBC
 FtcJ6OYwUs3se62rdcQxqutU+SQjfq495xGp1xmrtAqejqEuipPN5ah9NHjHSkiFxIAxnxQsmMQ
 I7zGpEDpmQQL+kOk3lA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_02,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_062426_392208_C949537C 
X-CRM114-Status: GOOD (  15.13  )
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

On Fri, Jun 12, 2026 at 02:45:20AM +0300, Cristian Ciocaltea wrote:
> The PHY PLL can be programmed by an external component, e.g. the
> bootloader, just before the recalc_rate() callback is invoked during
> devm_clk_hw_register() in the probe path.
> =

> Therefore rk_hdptx_phy_clk_recalc_rate() finds the PLL enabled and
> attempts to compute the clock rate, while making use of the bpc value
> from the HDMI PHY configuration, which always defaults to 8 because
> phy_configure() was not run at that point.  As a consequence, the
> (re)calculated rate is incorrect when the actual bpc was higher than 8.
> =

> Do not rely on any of the hdmi_cfg members when computing the clock rate
> and, instead, read the required input data (i.e. bpc), directly from the
> hardware registers.
> =

> Fixes: 3481fc04d969 ("phy: rockchip: samsung-hdptx: Compute clk rate from=
 PLL config")
> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
