Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A7B2FF8867
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 01:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMTzPntx7e2MmM2bvI9SPkYcCJ1/cZ+DKLe/9F8wimI=; b=17jNj27tH0hZbA
	Az0RHFSsvttujeP/9+1WsZPIop5GvAtt+k4u1CcMV5eq+HJieCg1LaeBFtw/ggoNoFrc3hQh7JAp0
	1gr5Uk9tjo7FbT2Mjovngeyy06CNSPFq4Yz1B/vjkuE+avACInyOM9foweExtC9yTJHx/Zn68bLxE
	it3Iny00jdao4UpUOfUKCgGyAqK2AiBkhCg+O8T/J86jLi4KMSiJg9TMPgnyELD2f58koIUO8UGao
	W+Br4oP4ulThyiuaXB7mmMT9sdTuYpRD+eGhHEYezNXqsZqIjC2SF6X5GPaeDrkjj8qp33dwom8Wq
	ejOJLWJtvgTGtf+MjF1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXdo-00000000Pfp-1Wi5;
	Tue, 28 Apr 2026 01:53:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXdl-00000000Pf3-3dyl
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 01:53:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RJ3cv62112686
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 01:53:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qsYf6auyPCvYiUhWs9qEQr3E
	nNJRMJfao1u7g46ap5c=; b=YHbhxU7dPRkCfypPX1k6IzmiUAXi/D0aFgIvztv6
	uWLPPelcDF7ODdPrh3x/UOhzSjuGoBFWLpcAlIPn7qb7H9wKDNtagMwuqQKhxqgO
	f9V8R7wtj2mL/51uY0Ys/J7WOh/W68TPRUEyD7dsHMHMz0Eo1Whoj4zB346YfMsm
	MOCRxxzIcwqCQq4PjqOh2+6SfjZyCAedlKcHedI++RySLsTnWjMWLQewwe1vWbz9
	l5NBfavcgT6p3iV/zzMR3lOR5k/fjZ0fjMLEawYYsfifPQJDyzFFgpdrPRzbyW85
	DarZXcATaQPn7pGqCqbZ7vgHb+4g8uKerkgjmFhtuAcI4w==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtdmbh8xq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 01:53:32 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-56f71e90581so8907399e0c.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 18:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777341211; x=1777946011; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qsYf6auyPCvYiUhWs9qEQr3EnNJRMJfao1u7g46ap5c=;
        b=EuhzY8UoeZvAxXTpj/7idFVZIMAOxyDqDznekVWthCBliYuSaWXhMMNocVhJXtGaEZ
         1pjkJCQIvgq+B8e4PhvW4+4xMXQ4oFYFD1P6xwh2sOdDh8+EtJMMkqS1nZS6JW4VuZN1
         qkblyKJl8M+J2SHf1kgm69uT4NRpIes0mDEFJ8V4LtNzEFxMHW8MB1x9EwRsTcnqlJoM
         9gdpV2BmeeE21Gdwl3S900SIq4ekpHheHeVqQFsA2GRFE1Y3Au0fiZobjZYsc7S9wMmf
         YXZ+GkAabQh5hFfMkTVt2CBop5vfiFg5qyVEfJCAhgM8s26Otn9VFtR+Klxz6GCSRsUS
         lSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777341211; x=1777946011;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qsYf6auyPCvYiUhWs9qEQr3EnNJRMJfao1u7g46ap5c=;
        b=QxFFNoq4FF78BgUjUDlvcXe7GZGRRd44cjAgHME/PMuzzsOud5tperH9jpRF46sF3W
         vd9yNmAQ92TTcRCY6pnzRwYNfskmuh3Y1GaTCouuxZ6NIl86yAu6au2ch5RQRAic8rki
         ZoTbVxkMsG/TbV9Xn0iYNO5kZVYPM/fYxG6WcYcmiPm0Cqa/X+vSFinRGwEOODjC9AGL
         mmoI3J5fqxPLAqHSh3DdP/Q0CRvqwrbfprTn8b8H3azlwHlrAX8aXuM4zubZ36ey2nqJ
         prmGgr2QDR4bvpLASRzAzuq0x3UGNn9/r/dBtAFR7jzf45L3CX7Fos6KxERQs5K/Kmkh
         Ve5w==
X-Forwarded-Encrypted: i=1; AFNElJ9dNn4jPbtTSViCVrflnqDkeOju3jtAW8RKxGzkYFGJ1bCV+voMRETcL55szJiE6iXtBY+bBgmJVJYmqnj6ow==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1NMxWmXw/jYXel2q39mtxCpYEHahK/8ga7CRa2v4xbI7tj9G0
	KV0bNkehflq3pRvW34aV4JpRGgBBpc8HfWPEu9Jw/QlYbscG5hFfaZm68Z3HmVcEdIP+wI0NXmn
	9Sei38oLXDy9Y6iUDwpi8fJfv3JOAZaEep2yWjWKomm4vhU7UL0w+yV2BxnQ/1WK6vYktJLTA4Y
	Q=
X-Gm-Gg: AeBDietXS/yVgJu2mYSu7vqQ8QOLVEWYRRLAtgfd8d1749YaLJeoAF7PSQOi0yy/8KR
	rV83kPfbPWpqJKDo14gSAeCR0RebD3/tZJb66bKsNab9sAWpbU6NQhl29MuVqrBMBW1md6PpAQt
	vwFf4v73W8NgO5cNE3hOWZ9bwBFUoNUgkca5+roi4ISJF8u51gDAxZeD944lzsjlL53kUvJxMsP
	YXUvSh7udfuvnQQS72e+ZyCzhDPk6/a7HALnTv9ELQRHIPSW+pvnpAv7dYSn6vzE0PRm2+ANhFa
	t+WAdSgvnwTmFT7pgwQsdp1rcwc+lUaMmt1Cxrejml2qcjfUC3F6HnsSTLVCS7jLG0xsgulHy35
	zUgRGqFGr+J6f/0r5EAmxEfUI3AS5nTwBC1qpKYNsbbLHRxNizZ5GJXonHT8mdvt77pZQV5/6kA
	cvGQT6Bb38pPNqB1BPQmiJ3Smnc4Rp63oeWc71asP90tDv1g==
X-Received: by 2002:a05:6122:e20a:b0:56d:8493:d455 with SMTP id 71dfb90a1353d-573a53222d2mr525635e0c.0.1777341211576;
        Mon, 27 Apr 2026 18:53:31 -0700 (PDT)
X-Received: by 2002:a05:6122:e20a:b0:56d:8493:d455 with SMTP id 71dfb90a1353d-573a53222d2mr525613e0c.0.1777341210914;
        Mon, 27 Apr 2026 18:53:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3923f5b1b3asm2780951fa.40.2026.04.27.18.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 18:53:28 -0700 (PDT)
Date: Tue, 28 Apr 2026 04:53:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Diederik de Haas <diederik@cknow-tech.com>,
        Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH v5 10/10] drm/rockchip: dw_hdmi_qp: Restrict HPD event to
 the affected connector
Message-ID: <xwsnwqk2bqixswue7ajy5tfzxn6u7sfuqlpquywsrdj3bs6nmb@pv6szzdjjuzu>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-10-d778e70c317b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-10-d778e70c317b@collabora.com>
X-Proofpoint-GUID: cZbuqIldUN6I9B9y2Gf61I870n53Kvjl
X-Authority-Analysis: v=2.4 cv=PcrPQChd c=1 sm=1 tr=0 ts=69f0131c cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=MTERcTr8AAAA:8
 a=69EAbJreAAAA:8 a=QX4gbG5DAAAA:8 a=PsTfIz2H8riIsuG6cnkA:9 a=CjuIK1q_8ugA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22 a=1w2Y23rLpnaGpkO2nlKf:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: cZbuqIldUN6I9B9y2Gf61I870n53Kvjl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDAxNSBTYWx0ZWRfX3u/8U5B26qYJ
 qT+dLvEKifo7qwE1goMqi2hyFYijbkKrJEP33osecK+8ix5OzMH9u+ozLcVm92QsBLUSPWPdTXj
 a1iEKdpCK93HL2wwzgw21ztx45w8o3OZ7G1rDKn4pfS3K1c9EqjbDdzmagWlSfc0ZAp2HEaOOre
 tKz0U2bhXnFDd4nBmrP/mfGcGtpu1l1ScuMlKnTCXmQ7a0MgOhXZk9PFEFwDi4tshHrNoT2BYw3
 sr1MEmvGdgkBrgYwLXqMPlZhfrIKccSZqXKUGHF21hWtMob5sd8DUcwlf48Ju8CCLpPlnZ2ii4W
 FWut/BPkgflkFzuIlK5etKc65qMMJyU5+t2ZcxpW41vsFIhmgPYTDWD5Y1WfK6Xtyizl4b+bZD0
 93p4V8s50MVNngYObwJWKHDoifUHeVZHarLW5BhJWA2P3kXcsCbXIK8UcV/T9N66HIFzjTqqbec
 LvEcPz80/4iXvHqQPWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604280015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_185333_943102_43B42200 
X-CRM114-Status: GOOD (  15.69  )
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

On Sun, Apr 26, 2026 at 03:20:22AM +0300, Cristian Ciocaltea wrote:
> Switch from drm_helper_hpd_irq_event(), which polls all connectors, to
> drm_connector_helper_hpd_irq_event(), which runs the detect cycle only
> on the affected connector.
> 
> This avoids unnecessary work and redundant detect calls on unrelated
> connectors.

This also doesn't feel correct. The dw_hdmi_qp is a bridge. As such it
should be using drm_bridge_hpd_notify() rather than any of the mentioned
functions. Would it be better to add the a corresponding wrapper to the
dw_hdmi_qp API and call one there? Also consider implementing the
.hpd_enable() and .hpd_disable() callbacks for the bridge, which would
remove the necessity to call enable the IRQ in the bind function.

> 
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>
> Tested-by: Maud Spierings <maud_spierings@hotmail.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
