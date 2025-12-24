Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35931E784A4
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 22:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXxrST+OvdypR6dKQdEzBYTv+XHjOoBUEsAQigRSv0E=; b=U2WDpvWOYRC5hV
	AmINGV4j/JbyFfGGQArVWnEl0IhSBX1zqLkWTL/aQi+cCle0Y7pZhRYtPKL+11V242R5luOo9ljAq
	3A1QWgfzALWhLfLt49b5X/Cenlhm+EXYytv81Mk8kti9fLHPgSZgjqmaqlH8gG1PDpmMtMf/erXpQ
	CHbeZQeeUmyuUUuaAD9FEdHWcQCmGvOTtgqlC95X86LFUEHzFKS1oGOLqhRAbW5AZ2eNfTfOgxzIc
	FNDpG5p/CUb5FyJ8TvVvDQxIfqEFDxV7Ir1OBn73I3e5dWEeb6NFVrqW+o0KkXzr11+pXz7CPPs8r
	NvGSg488gnsezkzK9RqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYXLx-0000000HS88-4ATi;
	Wed, 24 Dec 2025 22:29:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYXLu-0000000HS6u-2pKa
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 22:29:08 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BOGWuT7678255
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 22:28:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jnqeKfDVEUH7RrIR88HfljemBK9UZki/ZbbnLXfs5xc=; b=m06/rbe/crPqalbK
	uh4vnpL9CD8E7INXhMCw4HfEx8iYczBLZ93py29srR9424RkTc+Yu9HHa5Mv5Q0c
	JSg+FDnZDK2inaQF2y82dQKTugivRmJH7JuhEdR63Ahn1ukaBStAQTeG33HzdE2P
	RNokJsLXaMcP8Gh/s7kXdXpMJCyB8l9fOEV214oZRnhogtKif/jk+/PjAa1x9Fg4
	Crx9f1OSriZhrDc4tbC6E1ItXmY+N/XOQ801h/6D/fNYEaPQl/ovAgiV/xsK+hBw
	U+zwqTezlYH1FjuPxLrlVWoQ9cu6C8baUUbzV9ZT/yrBcaoMhk+sTuk9r/J1lU3T
	AkkfUA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq3n5d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 22:28:51 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a32bf024cso64187956d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 14:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766615330; x=1767220130; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jnqeKfDVEUH7RrIR88HfljemBK9UZki/ZbbnLXfs5xc=;
        b=XFaoDSZwdQtiMCtFB6gZsItg4xrL8uOUUZw98r3yrWCkbXUkXxJy5E6ZM1KL4bBrEp
         yJ3+geFtIedyVYaDsos01x2WcL0AAUzNakJbkRBY9d9UeVH+BWxZKhHOqzGH+PEXlbJO
         jdFxMJSFnDcMmO9F7Db2IoCEeXoAxxVzT5KLya87bsDBuSl0+BAwgUnMOPNT8gzQmuA5
         i1+B0zvV9OSBfGcj/3akxr7LB1YueC0TlbWrheEQCbReGiVaElWW/u8fmtOb0tFrzWJl
         AqgGBsiaB+eWayXLkzBBJO0T+qXcWxAUTf+IYXUhm65FHijcqHMvKSLbByA9jzqzmZ2/
         1hfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766615330; x=1767220130;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jnqeKfDVEUH7RrIR88HfljemBK9UZki/ZbbnLXfs5xc=;
        b=K14cEKaHHk1Jar+bzJLX7UJOzmOHf4E7AclXS3RphJZneMqRsqOOPS9YGTNXiOf393
         4Nc36m4dk8wdzUO9V8c7DThbgrDn/ZEGq0EZXBJRI7eAlq/4/RbHg1SIrrVmdVpwrS/L
         /obDSOkoqTlL4d3+0Sxx/3aJLAvTTAePdUQVE7t3Qf+4Wxh1JAmjeojCqHsinclXrp7v
         wf8BbZ1RzWu6ixHvmDVINP/jmp+FV98raOVC148XRJMlNG/KNANwdiW/+Ysre0Ezuex1
         xv8d55cbc7TEPRyGb7MNuh+q+MaW5bhZ3LXaSqj97jvwQ0fdltIE1odP2JVeFVnY6h4G
         zWWA==
X-Forwarded-Encrypted: i=1; AJvYcCVa0O8e4Fri8AFXAqLlw3wLX8lmZS40RpCdg5AtlrE7qPdtn2wgulYofmnFnomH1k5IaQM6x8RNmY7KXOW56g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwAPUezAmNmvVLyPWn73Xbf4wGuRc6PK7zWf0N1nSlUZFmewkhh
	a6YJ7anq0AdPrtpSNrR9c5JmRkb/hk+lc1saJ7h+tdkiQxJyRvygjpZz3vCX6ywtT0ESsGgTPkl
	YTI87pcxpy2qwZQYcxeGYDOAiDSTTQYPlkDXhJaP++W0GCai35oy11v/i17tHTZ0HQ4zzqkZq8n
	M=
X-Gm-Gg: AY/fxX48UnweIayGYoCqTnwCg4bSBZdCr66Ddwl3hgCiutoFniT4eFZo7HAke6Khs54
	33UW2jcfPINozEKC39pEApEtvzNRy/43g7BJoB7d6Ue2B76rV+4USIeb3i7Q9E4Ovg5lijEdwlu
	1zFWVSI877ui7wVtz9CbxDbqD40fWfjYqzfyCoKaNSUtPIA852CFxT63Lm662lFPWKiu2AUyHu+
	i/geAI6fa8syx1toKtm2FY16VYaEAJlSWZ3x1kVG4F9uDFSr1Ce0EISY22vgVmr3OXw1eFttCjb
	YP76mkpp5Sd5ApJmxNC62YgBCLDkUUY5cnW3d4T3Ox7Z0XR207bpUKVlbt732Y1eNcfko7UM6GA
	uU2G60o7qVcNDDhuqxtcO/MxY9AYxH+Tto1KDXl6xkUwLI1i0EYwe3MjvtNqavs2dChVnJY4n2Z
	vKqZMUl1ElxhZ5fUQEO3SJ4sM=
X-Received: by 2002:a05:6214:1cc6:b0:88a:52a1:2576 with SMTP id 6a1803df08f44-88d816677e6mr313884036d6.1.1766615329932;
        Wed, 24 Dec 2025 14:28:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDjHfHLudL34DV3f8CJ7r61XAAinJKO1G9J6E+GUx3WmZ4f3SX+neuLfUYgLL/zzuLkHENnQ==
X-Received: by 2002:a05:6214:1cc6:b0:88a:52a1:2576 with SMTP id 6a1803df08f44-88d816677e6mr313883876d6.1.1766615329428;
        Wed, 24 Dec 2025 14:28:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd1e9sm5197038e87.23.2025.12.24.14.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 14:28:48 -0800 (PST)
Date: Thu, 25 Dec 2025 00:28:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Andy Yan <andyshrk@163.com>, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, mripard@kernel.org, jernej.skrabec@gmail.com,
        jonas@kwiboo.se, Laurent.pinchart@ideasonboard.com,
        maarten.lankhorst@linux.intel.com, rfoss@kernel.org, simona@ffwll.ch,
        tzimmermann@suse.de, knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v8 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <h7iqdiolwb5hkqdkbirqjeytxu7h25p6aptspgdvndbv2husd6@mb6vroredden>
References: <20251016083843.76675-1-andyshrk@163.com>
 <20251016083843.76675-2-andyshrk@163.com>
 <8913609.MhkbZ0Pkbq@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8913609.MhkbZ0Pkbq@phil>
X-Proofpoint-ORIG-GUID: FdKAfnmS5srWYM9y-TaRFs7yKpiBmwro
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694c6923 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=Kmzl1NW6Bz_df4YWhFgA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: FdKAfnmS5srWYM9y-TaRFs7yKpiBmwro
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDIwMiBTYWx0ZWRfX0Xghmdz36QsD
 D3xZKjSMgKWPqmnosP1i873WKMARN66qVmnTw+HBjJCAaGsH7fvq0DkIlLwduhW64OoM5cV02Lv
 31GVpLj1Z3hF5pA10vKYF+oqAX7uNQgKCnBhRbNPuaYRqVY0sLcQjnmiMm9NHWYizkJYQk1L7uz
 8/1scf+dHI03WqcnVtiiEIItaGfsYxtYhDRUwnq2v7VZ1evm5V3JnhLyRhGAkOKMAlwVHP7yS2S
 m3xTISpEWSx63hOCw3YsYrnYUa+cTF2HK8DVaADdR7suJnO1yFirMjoH0iEAw/DiKGtamJ4ca+Z
 KTGTsoDngP8VxHVGC4RDrIZZ884aGxMDXGhdkGLMtYSnRjc7hNAdKdK3RTwcjBL/Arldla1AWLt
 gCcidoQg6uXUyJZOO/rskuxaIDVaGlKBAmXHhcqf5jg7md7JA/GjKyH0GkCPy7RqYV/6Z/rb3Ni
 GYnAmpe9P/GFhaK064Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_142906_995419_4B2D35C5 
X-CRM114-Status: GOOD (  14.51  )
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

On Mon, Oct 20, 2025 at 02:45:34PM +0200, Heiko Stuebner wrote:
> Am Donnerstag, 16. Oktober 2025, 10:38:31 Mitteleurop=E4ische Sommerzeit =
schrieb Andy Yan:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > =

> > Convert it to drm bridge driver, it will be convenient for us to
> > migrate the connector part to the display driver later.
> > =

> > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> =

> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> =

> But of course I would be really happy if someone with more experience
> on general bridges could also take a look.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
