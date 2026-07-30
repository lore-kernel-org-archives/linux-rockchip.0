Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACA35C55165
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 14:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyFzIB0trnl8TsaHgYCqpfDOUu/3yr32i/wvDdTsXvQ=; b=fk8aHjf9CVqhF4
	eJkaGfNLEDjr6koSYCqzYLMg49KnL0MVSDc61F/qVj7iQfWpZ+f7EcRtqR0uJ1uLj3yOhCgY1/9pR
	6Dvugu5nlh4FT8pRP2vHLHbYAz9EvEy7Hdj6fRjfLaNVoSQmixYLDuxb10/8xqW6MejjKmHQhhOnR
	3wFpRJ/6bn1+oBHjOj0nbJJeTUnmwgl8wOBia85ANY/Magdo/WEEikOljs3BXSn1srw7kcuOvzUz1
	as7Ixfxj9jCmVMyH8aECp9f4PufCpUopU1zliBm4QbzMohfOLW22/vz62plDLnGWrbiV7GW7nKK9P
	OKEemw0wrKX1NrgPB/lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRcB-0000000AjWb-16hh;
	Thu, 30 Jul 2026 14:20:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRc8-0000000AjUf-2W0c
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 14:20:01 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UEIsPE1252343
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:20:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6zNtlF6EBgMK54ivwKze52av
	mGMNXevbSu+B7Qp9w/Q=; b=hKdDpD6xOn8RXByoH/ONerRf5R+Jo27skbtrQrx/
	ss0wVqgwcl5ckE1d84Ql7bRz6BmWViAJZK3nv9m17ZeZ7Xebh+3tcGRbXYN4Eq0k
	+7XkjZs/zVIlzeoi4tiAxCQGXnaLA8SGAtvhW2mh2tWS5lkMgq02Ck9cCuCiTDjG
	fOqrzIK3IALpgKVpZjCeCL/TDiBzH+bQS6aKn9SMPjhabvys0NWyeqrr4KDrCNqB
	McOpVlxw6MVkaDEnj5amYRoYtllfnp9mAwAwg0jtS3LmqI+zLL1wSOxM70Bhcuae
	xbyDj9wTnO3em5nLep4STve3Fsez81Z2VW4OJUVajB936Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr891g05u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:20:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c1b4d961dso7573751cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 07:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785421199; x=1786025999; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6zNtlF6EBgMK54ivwKze52avmGMNXevbSu+B7Qp9w/Q=;
        b=RLk5Gt78ZuAfwjwuJ5i+8H1DR92ywpAslRj1sW93UzDMdJV1QXSf+qi1UrwikSLf7Y
         k53rxtLBK76b5noYsTxEBfeioHrVxU0D3IK+SmN1gQiAkmX5YrKq6GZ9gaUEItoFa+VK
         dYN+ZX18/0alzsHVmT/YxqDQqZXPTf1UmKqglwA1N4NNOMreENDEkeKMpiWthis9Yb1u
         SJZsfcRnJw/2s/ESxxfvimwTtD0h2jAEs4acZ2PAP8/7lsbiTnV1xtDa5OdnAcxVtP8W
         Qbcrm6nTrqVQJ+piupeJS9Uid33c3bfm/XLHMIKPZIc5lUMw7s1xvIOWlxhHNYc1IUBe
         0BaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785421199; x=1786025999;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6zNtlF6EBgMK54ivwKze52avmGMNXevbSu+B7Qp9w/Q=;
        b=XjSVPKngq8UGIKGt2S1Djb3o5ihE1dzymzavHHqTOQR1T6PYf1AuWrKq4c4G0EkNIm
         PMXWSGEUKjxGRN1G7K5uQBvP8GciixRYU8evg4b3dMg228JqL2TxpoyWzWZRUQ3mI/NW
         OTLgkYelghtxyLYgzLWfrwWgxBkueHMbbGquoqKgM5dt6O7EsArfwrxNZGBVkbwQtSNE
         nkAK6lOQ6kbcBmGkb+UhXCLWg20PZl06YUFNZYBieeei0ihs5+5Ou34/3kW3s/eaebS7
         EBptnKhmUWR4YJyOOBk3b8Ii2XxkCz0AyYjuzE6pEJseL7IsvaeBgdCanak4RPIFeVgR
         CnSA==
X-Forwarded-Encrypted: i=1; AHgh+Ror9vUSzNct9cIQN+pY6u6xBhVPga9WdH+7LOLQx4o7jNTsR3utjJ57ybkYLa+QemKhS5SUL/Aae3vBXzpqTA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzYj1dYme5EP2EbcEQBha+Iq3vkW+5mZAD4rVKIMXt0ujcYhcOI
	dL4hoJT8cTo586OGdcbbwbJ4IYaHUoddY+Sr1XeEFl+H+MGbcbp4RdKhZOoncfPq+jn1pAu6cgG
	nSyru6kd1zuljFFOR8y4rJmOgJ+9EotsIXaTdX5/u77VkcJ5nVnxQoLZpfo1ZYCJrbVOvTcpWFD
	A=
X-Gm-Gg: AR+sD12/YSPZz3yx9kPvuteOvPrh+QTBZ4sa48itQvnjXQ5AtJhgxiSrk9eKBVL23f+
	UTkuz3CyxtlvMjwxrUTl/eqR5qsFHuSrscIriNRRRL9MxYCGL4gjWEmTyzY6V7WUJwN29sosEzT
	3jen5F7z/s4ibvER3mD4b9olLb8KDfgCwGlv1LRpyMOEpBzWKYEbw7wrPHS3TyMnOJ4GXAgLoBN
	bbFVdlKhSHv03YAPwN3yrNxsPRv46uSlqsiGmaKLmuRv1uufzSfQQEwaJKP9XIO4ithjfWhwxlW
	EdJqOklplI8hNxQ3DhbXOJEuKND6646XjPyYNiqqyyhsOmJwosMRS52MeEzVmiNf47sY8NQ8aCi
	7LObIwtWKk9EEZuCv/kgmZ/H21jjLzHihYT3T0mC1THeLZ4xDgDVW8IPy62Cf21ArtWeWhjLfCK
	Qrqk+VWFGsMIvTDQ==
X-Received: by 2002:a05:622a:4c0f:b0:51b:feb2:3827 with SMTP id d75a77b69052e-52b42618677mr6293311cf.32.1785421198982;
        Thu, 30 Jul 2026 07:19:58 -0700 (PDT)
X-Received: by 2002:a05:622a:4c0f:b0:51b:feb2:3827 with SMTP id d75a77b69052e-52b42618677mr6292761cf.32.1785421198521;
        Thu, 30 Jul 2026 07:19:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39f6ac5ed84sm3374311fa.25.2026.07.30.07.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 07:19:57 -0700 (PDT)
Date: Thu, 30 Jul 2026 17:19:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Algea Cao <algea.cao@rock-chips.com>,
        Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>,
        Phong LE <ple@baylibre.com>, kernel@collabora.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v9 02/61] drm/display: hdmi: Rename
 drmm_connector_hdmi_init() to *_ini2()
Message-ID: <e4miagjzyvyxxbhbznze3ht4vvnqx5whe24dl3w5sdgasafdmw@gblajrkqr3mc>
References: <20260723-dw-hdmi-qp-scramb-v9-0-4fb12ea22ac9@collabora.com>
 <20260723-dw-hdmi-qp-scramb-v9-2-4fb12ea22ac9@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-dw-hdmi-qp-scramb-v9-2-4fb12ea22ac9@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDEwOSBTYWx0ZWRfXwLJVYRgyy+Sn
 S2zz5j74/gEpyAJJtofIVhjziNvBC5fNjEAEBioouUOQSBTXSvuSCwrpbklSSW28dSDSPOEFokj
 gknd/yfSdCZfHccqw1QFrhdcBbxay/l1hCW8k7LWnhHZydZjgkFJX3QhWafW5/s8Q7Ec6ftDKUD
 uYevo4h01zSIlHGZV2VWPpZgVbHC6wIcNUUWL5moNF3OLmUrVO3zcOYoJek5SbyfrVoEH7+7B3x
 Du2TuTUtK75YOkojLAW7UvPW2ILcQUa3IL8PFeSOq4xi1eq+e/TaPB410lSkcwAHgM19YdcKruo
 dPghiNAJrtWz+0sYxnx50nE/cRi2HOvPm9uiLlGP0okEmmXZ/rf24CGPq/gTitnBHTg4eKtmjQP
 HoZVA+ZGxru+gOCDi0IaOcUDqG5zs9ZyBdCMtCUiiBrbOQZ/3kYtnqX4SzqCSZzSHgyJppL09OK
 9gbpAfg5Qly2JwWsycw==
X-Proofpoint-ORIG-GUID: 1pwM7uxPK7HOoVXcfUFEkXCsqy7vOuk7
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDEwOSBTYWx0ZWRfX1PYWAZD1OcI1
 NZurSJzpKCxROp+7Ki+E+2fXHtpH/z79MgIck/dhHRRPXKu5tzWiEy1KU+ULFgMkJHt/RDaVYg3
 bbyQ69JBEC53wqIw4YNCw+4J8d/mCPg=
X-Authority-Analysis: v=2.4 cv=PdzPQChd c=1 sm=1 tr=0 ts=6a6b5d90 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=uf52Jz-x5RUOtouhqywA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: 1pwM7uxPK7HOoVXcfUFEkXCsqy7vOuk7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 adultscore=0 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_072000_644543_648B271A 
X-CRM114-Status: GOOD (  19.52  )
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

On Thu, Jul 23, 2026 at 04:34:51AM +0300, Cristian Ciocaltea wrote:
> In preparation for changing the signature of drmm_connector_hdmi_init(),
> i.e. dropping the vendor, product, supported_formats and max_bpc
> arguments, which are being moved into struct drm_connector_hdmi_funcs,
> temporarily rename the helper to drmm_connector_hdmi_ini2().
> 
> This lets the new signature be introduced under the original name while
> callers are converted incrementally.  The final patch removes *_ini2()
> once no callers remain.
> 
> This is a mechanical, same-length rename performed with sed:
> 
>   $ git grep -l 'drmm_connector_hdmi_init' -- '*.[ch]' \
>     | xargs sed -i 's/drmm_connector_hdmi_init/drmm_connector_hdmi_ini2/g'
> 
> The transitional name matches the original's length so continuation-line
> arguments stay aligned to the opening parenthesis, keeping the diff to
> the identifier itself and avoiding re-alignment churn here and in the
> later conversions.
> 
> No functional change intended.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_bridge_connector.c     |  2 +-
>  drivers/gpu/drm/drm_connector.c                    |  6 ++--
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |  2 +-
>  drivers/gpu/drm/tests/drm_connector_test.c         | 42 +++++++++++-----------
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  2 +-
>  drivers/gpu/drm/vc4/vc4_hdmi.c                     |  2 +-
>  include/drm/drm_connector.h                        |  2 +-
>  7 files changed, 29 insertions(+), 29 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
