Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DA3606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 11:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WOy5TpE0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=P1LCYAuM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GYyIxbdb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RDSbOUyZdzFWuwDnFpVnQrDCDyYnVR7B0r6na3mSoAk=; b=WOy5TpE0ZZh1ZkDJrFeNSiCK/T
	a1qcdCDNzfqe2ZChj58O14XS7Qs4D2BSokSMA1nnIfuVA/FFmTOIoNzIjXD4/jpJpu4CR1rxE9xW0
	7M60OOzApzrTJSIcf5G1woph4aLeNI/rtAI2otTN4gkHhcJtHRW1aT4rv50Xli52KfERnlGww2E5V
	61I+iuX2JEIyR5w7Z4id+tDnyf4oBnz4yfWEUJrvYr4QYXEANIUfPFpW6c9d4zvgmCiEpoWBH63mQ
	swcY5KveEj/f4wl4yhMf9KEyfhBJ0+DZGbxVoc8iSNH7Njneo0YmKJewzXl1nVHISYTAgMFVpRL+8
	K7QsKHGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWXI3-0000000Coca-1NqO;
	Thu, 26 Nov 2026 11:05:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWXHy-0000000CobE-3zIu
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 11:05:21 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQAXWJw2658212
	for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 11:05:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g1svp5E9pb1rvrFjE3ldylGmmn2srl47JCoHJgVCeZs=; b=P1LCYAuMr/D5qPTC
	qvoMVcOhInukkngJQPbRRoVLIxCrm3Cbfltg0ixbMdjOrOCz28lnsbK/FQbX9Kxo
	BkB6bDX3zRnt8Lih15T2VcTNv3NsYAZmdBNcGIxrJ9waXYUlSRR2c5ItayhUE+Lj
	UIJqi1GcDJuTJV8n5mrLlU/qf/cOXHqVrbFPCDN4b0Cqz9iwZUQbDA+S+IHfUpR7
	ZaGPJrzmcNTomoKTKw6DtX4u+/Ex32UNVMKqo5Hvrp3sL161tdjQ+yWKRBUIzIeB
	VPjhRhXeaJs2curePdUvH8qZN14pakXXbheUUye90cMh2duVMtLEbyyacpM8Tti8
	AevJyw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j66qfamp8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 11:05:17 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3b49dd1e77cso3637520a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 03:05:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795691117; cv=none;
        d=google.com; s=arc-20260327;
        b=NPo5o7ZaZu6oo/nhU1LgppTh7AMX3n3LeNP6FdUw2SRlNfVt1v6/bvmR87CMfh8fNj
         qxlbEz1FGH9+HNMdumsQlVzVyC/qYYT3MK3qhIsuHvlZt55XvqySsQW0AWcglPi0oWWg
         xZy53lIgrMyx95GnXi2U4GsUq++ysjH16e0o7xr1LsdLL7IW5cytpL3qKjcV4ZATUA79
         0wOw+iF/ZzVFPysvJpjsArMJH2AfvClHn25vyHFzOxbgfxFCT60oNnLaTPxJkBaVin9Z
         HJ/P0n1edbEx4web5nwhN/WZL+kLETjTRiDmC7HSBWasZNu0A++cuYkQh4eWk70WfwJ0
         EaSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g1svp5E9pb1rvrFjE3ldylGmmn2srl47JCoHJgVCeZs=;
        fh=2cmCq0hmZ2RFaoJG9bqBRb0CIs8InHfks39QMrJV3BQ=;
        b=UIa2ZNSAcbgxJ8Yf/l4U7PeP1oybkhDmPxZr6jMw7ni8Pb/DUbb0mV0IbfEX3F8FcT
         wirTEUKc297YQZo/gnBfCfkQEvma11qNwELuXRMkhVftjpv9MdguLFDwt5f1eSt4m3Kf
         e9ffvkCtXbk4Ld0Gz3fCrcNVmiDZZvFZITnPLwPfyslOcHIFSn6AnCmaL1jdqJi8y74L
         UQTNjKz80Kh+/cMYOJgpwvzCNri7jvh0jLi+Je9V6LhKUb6lxW0KXjL5qUDAjbQrkwXB
         onF+v8a2607JakD2oPcn0Q8lxtmTftNerV7Bvt/caTpExuirJ4fAwWOBGr1juXNEp84W
         PpnA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795691117; x=1796295917; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=g1svp5E9pb1rvrFjE3ldylGmmn2srl47JCoHJgVCeZs=;
        b=GYyIxbdbnSM9lzhr7fJbd7X8dG3qG4UVOZ6WunRbw6iEsYcUuG+I5yNL4d+ZSEhNSa
         wfYARgZhCtx6UTRilcQzsJhGg2AqRjtBZjLYHpkji7RGAxEOGChgB9e+XUyhxZXk/7pw
         0B/7YIKpXe422L3xs7lCDVuwSHrCjQLMdx5/0MLEBOy/+dQPMBa7418I1Wqp/P9RKN7V
         7SkGLBeyUjw8tEGd4snwEYXp5Ml7sKq3UnhtE3WxBqtAfFnIT0muwmQq2r9egPYMVTQL
         3uGOoLmmzI4Wvz6iD/twccrYjwX1TpnhHkk6CBTTT++Nil/8Rge4X6qj4jymuIdCuuV6
         7QOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795691117; x=1796295917;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g1svp5E9pb1rvrFjE3ldylGmmn2srl47JCoHJgVCeZs=;
        b=VZtc2Ol0DQf12UGF5Hh2JM3WL82uDljrOnG6sIqqkCFnwqHqAWgdnkuRHR+3Bu+s9f
         pVckZWsaUM0ibBTJXVMMt713W8aHg9QI81dHg0f7+zGYKG1KmZbLkhTWEg8mVMQXI+kB
         Rmut71Whbze0tqJpH+ppGIvNvFsYg+9u4cKcpHvZPRZam/i9CIthWAqdTbSMZuSuW4UU
         BRhcTMhCIOe/XTOAcpCNFMb09DgeQPyfJd8vb52DZLe7H4BcYNKHlkda2IiGqQF+miRb
         Ko3nCBtNv9nH6CyJDazLtbozWqDIZ+CAVrk69leQCFU71qONUA4OpydNoNAqrC+h/RpU
         4OGg==
X-Forwarded-Encrypted: i=1; AL+hErH7H4TvgeeE5v1Wpa0IPayrsUM2zcX/X0hNhBs8Wn55FVEYKUlElUhLjd2MJXZA6fgepfd1Vz2HJyEtqbEyKQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/CJ+9eiKkYM11oXhw6XDR5UbYBKozIzpG9w2fzO0306d+/z8yh
	lHb4wjMi7f3GPDI0QsF3FF6L2jBRldSK+kz0ldhtJdtDTLwy2QXz5cra0GTuMn3k6qljTcxJ2OE
	Yfkf1Fb4YHFQkMLSibowH3ziRQwNnnn2KfecXnb8CO4P/v5O8Ni/KYcQlNNyyDY1dIXM+iCEHNR
	bjGVRwVU5HSh4m4Zo0dNDQY0D2zxjVLt/BvJjbew6kM7Mvm3MqAA==
X-Gm-Gg: AZFdTZcJeDEqtTMZKd5o5A0D+GEJIMP/VzOI4Xu4z+DBa2arjtLkx7AVGVA0UohNwV8
	qukSG1LWK0fUpuIKXuO0S4YQftWZp8tEtDQAFonAoGQUb+WHG05JnuiLdtjOOITemx9oKK+f838
	a5VFYfpiCe/3pHNrRHsNdCy+391b8Ctp//mOqfv955Ywow0aS9OZjR0++2kw==
X-Received: by 2002:a17:90a:d2cf:b0:3b3:b595:2473 with SMTP id 98e67ed59e1d1-3b41c906b61mr18544089a91.24.1795691116575;
        Thu, 26 Nov 2026 03:05:16 -0800 (PST)
X-Received: by 2002:a17:90a:d2cf:b0:3b3:b595:2473 with SMTP id
 98e67ed59e1d1-3b41c906b61mr18544043a91.24.1795691115988; Thu, 26 Nov 2026
 03:05:15 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261117173738.1073856-1-Frank.Li@oss.nxp.com>
 <20261117173738.1073856-2-Frank.Li@oss.nxp.com> <CAPx+jO9RwkpSKwq6vq00uoXK-mcovJ2LMH7b_ByRnxOUj8nH8w@mail.gmail.com>
 <CAJZ5v0jsnLjEBxa1R4Q3hZLZKrCUW0xSE9SqLB8bd4tNAhXTAQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0jsnLjEBxa1R4Q3hZLZKrCUW0xSE9SqLB8bd4tNAhXTAQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Thu, 26 Nov 2026 12:05:02 +0100
X-Gm-Features: Aa3M54r_rMhLGHc1vqQ3FXriLYRwoLb-Xyx7xbWcsA8f-DpP_bkxDUBWaFpBhbQ
Message-ID: <CAPx+jO9JYTygL7F4nc9zb=iOmeKfdpa6-_QBOvAmMN9fp6HfwA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] PM: runtime: fix stub pm_runtime_get_if_in_use()
 for !CONFIG_PM
To: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Cc: Frank.Li@oss.nxp.com, Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulfh@kernel.org>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Matthew Auld <matthew.auld@intel.com>,
        Hans de Goede <hansg@kernel.org>,
        Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
        Mark Brown <broonie@kernel.org>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Yong Wu <yong.wu@mediatek.com>, Will Deacon <will@kernel.org>,
        Tomasz Figa <tfiga@chromium.org>, Marek Vasut <marex@denx.de>,
        Michael Tretter <m.tretter@pengutronix.de>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Hans Verkuil <hverkuil@kernel.org>,
        "open list:POWER MANAGEMENT CORE" <linux-pm@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-mediatek@lists.infradead.org>,
        "open list:ARM/Rockchip SoC support:Keyword:b[Rr]ock[Cc]hipb" <linux-rockchip@lists.infradead.org>,
        imx@lists.linux.dev, Frank Li <Frank.Li@nxp.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Tvrtko Ursulin <tursulin@ursulin.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
        Simona Vetter <simona@ffwll.ch>, David Airlie <airlied@gmail.com>,
        Matthew Brost <matthew.brost@intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Alessio Belle <alessio.belle@imgtec.com>,
        Luigi Santivetti <luigi.santivetti@imgtec.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Bard Liao <yung-chuan.liao@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Dafna Hirschfeld <dafna@fastmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
        dri-devel@lists.freedesktop.org, imagination@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
        iommu@lists.linux.dev, linux-media@vger.kernel.org,
        linux-sound@vger.kernel.org, sound-open-firmware@alsa-project.org
X-Proofpoint-ORIG-GUID: Kb_jYhXQjpiuX8-1y17mijofHXOI4XZx
X-Proofpoint-GUID: Kb_jYhXQjpiuX8-1y17mijofHXOI4XZx
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA0MiBTYWx0ZWRfXyj0/8+Ppmw5V
 rQSo6D0iHqbexzYliJktGH677XuDTA83EJuMHNVwBap7JwmfbqJ/O2aVHlzOWBYOrrgBr6q7CkN
 wIt+N18IViKzb76vNEdIerKdjqLBWHg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA0MiBTYWx0ZWRfXzBA/73Jp9NDo
 VtU7Z3XXOMwUOe/buejGzZn49F8ksp5frgh9mRkis6AMKBAx6rWDz3JuWmLHR7hCErDIlf3cNla
 R8lEXercMK0AEaz0+qeb2FquqAELCfyB0SvITewqmwOqqqfqQ8Aa/RUf10DG1RDNDR1gD67yWuT
 THv6pMTtETi3sZ6MLZvM0dKm5F1lnUQc8VrYmSMaObz+llYypvN+v8tuiMU6h1hsxHkSWIfK/Fu
 RVhj8+I2BiI1ozGLqfjOZGBSN8Auv+dF55ygsDVWSnkcEVl4doECxmy0+YAaZg7oQCKZkJnW+SY
 a3uwetBsx6LkR9LWyQdkWeNuiOLYoASQwG7kG3Dz3JSxhhV/P16m5lePFzQ4KFOPinuZHaD7lJb
 0Kj7MimnsVhChouLk4jDnoIxub29yciWo63C40ArtiAho38USoXYf72JWBHD1B6hfExxgRzDzAl
 fJQyEKrtAHwLMuSAXmg==
X-Authority-Analysis: v=2.4 cv=Q5VHcI2a c=1 sm=1 tr=0 ts=6b08126d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8AirrxEcAAAA:8
 a=QyXUC8HyAAAA:8 a=GFqr32JmAAAA:8 a=pGLkceISAAAA:8 a=r_1tXGB3AAAA:8
 a=iox4zFpeAAAA:8 a=7CQSdrXTAAAA:8 a=mpaa-ttXAAAA:8 a=QX4gbG5DAAAA:8
 a=ZLGELXoPAAAA:8 a=P1BnusSwAAAA:8 a=zd2uoN0lAAAA:8 a=e5mUnYsNAAAA:8
 a=JfrnYn6hAAAA:8 a=foHCeV_ZAAAA:8 a=x6yKa4QoHz4R4KwlW4MA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=ST-jHhOKWsTCqRlWije3:22 a=f02Ha7HRcztGgdyUxOxW:22
 a=t8nPyN_e6usw4ciXM-Pk:22 a=WzC6qhA0u3u7Ye7llzcV:22 a=a-qgeE7W1pNrGK8U0ZQC:22
 a=AbAUZ8qAyYyZVLSsDulk:22 a=CFiPc5v16LZhaT-MVE1c:22 a=D0XLA9XvdZm18NrgonBM:22
 a=Vxmtnl_E_bksehYqCbjh:22 a=1CNFftbPRP8L7MoqJWF3:22 a=h8a9FgHX5U4dIE3jaWyr:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_02,2026-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_030519_100846_8CBB45CC 
X-CRM114-Status: GOOD (  30.04  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgMjUsIDIwMjYgYXQgNDo1M+KAr1BNIFJhZmFlbCBKLiBXeXNvY2tpIChJbnRl
bCkKPHJhZmFlbEBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFdlZCwgTm92IDI1LCAyMDI2IGF0
IDQ6MDfigK9QTSBVbGYgSGFuc3Nvbgo+IDx1bGYuaGFuc3NvbkBvc3MucXVhbGNvbW0uY29tPiB3
cm90ZToKPiA+Cj4gPiBPbiBUdWUsIE5vdiAxNywgMjAyNiBhdCA2OjM44oCvUE0gPEZyYW5rLkxp
QG9zcy5ueHAuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gRnJvbTogRnJhbmsgTGkgPEZyYW5rLkxp
QG54cC5jb20+Cj4gPiA+Cj4gPiA+IFRoZSBzdHViIGZvciBwbV9ydW50aW1lX2dldF9pZl9pbl91
c2UoKSB1bmRlciAhQ09ORklHX1BNIGN1cnJlbnRseQo+ID4gPiByZXR1cm5zIC1FSU5WQUwuICBU
aGUgcmVhbCBpbXBsZW1lbnRhdGlvbiByZXR1cm5zOgo+ID4gPiAgIDEgIC0gZGV2aWNlIGlzIGFj
dGl2ZSBhbmQgaXRzIHVzYWdlIGNvdW50ZXIgaXMgbm9uLXplcm8gKGJ1bXBlZCkKPiA+ID4gICAw
ICAtIGRldmljZSBpcyBub3QgaW4gdXNlIG9yIG5vdCBhY3RpdmUgKGNvdW50ZXIgbm90IGJ1bXBl
ZCkKPiA+ID4gIC1FSU5WQUwgLSBydW50aW1lIFBNIGRpc2FibGVkIGZvciB0aGlzIGRldmljZQo+
ID4gPgo+ID4gPiBXaGVuIENPTkZJR19QTSBpcyBub3Qgc2V0IGV2ZXJ5IGRldmljZSBpcyBwZXJt
YW5lbnRseSAiYWN0aXZlIiBhbmQKPiA+ID4gYWx3YXlzIGNvbnNpZGVyZWQgImluIHVzZSIsIHNv
IHRoZSBzdHViIG11c3QgcmV0dXJuIDEsIG1pcnJvcmluZwo+ID4gPiBfX3BtX3J1bnRpbWVfcmVz
dW1lKCkgd2hpY2ggYWxyZWFkeSByZXR1cm5zIDEgaW4gdGhlIHNhbWUgYnVpbGQuCj4gPiA+Cj4g
PiA+IFJldHVybmluZyAtRUlOVkFMIGJyZWFrcyBjYWxsZXJzIHRoYXQgdGVzdCB0aGUgcmV0dXJu
IHZhbHVlIHdpdGgKPiA+ID4gY29tcGFyaXNvbnMgb3RoZXIgdGhhbiAiIT0gMCAvID09IDAiOgo+
ID4gPgo+ID4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmM6Cj4gPiA+
ICAgaWYgKGludGVsX3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZShycG0pKQo+ID4gPiAgIHdoaWNo
IHdyYXBzIHRvOiByZXQgPSBwbV9ydW50aW1lX2dldF9pZl9pbl91c2UoKTsgcmV0dXJuIHJldCA+
IDA7Cj4gPiA+ICAgV2l0aCAtRUlOVkFMIHRoZSB3cmFwcGVyIHJldHVybnMgZmFsc2UsIGNhdXNp
bmcgYW4gaW5jb3JyZWN0IGVycm9yCj4gPiA+ICAgcGF0aCBpbiB0aGUgR1QgZmVuY2UgcmV2b2Nh
dGlvbiBjb2RlLgo+ID4gPgo+ID4gPiBkcml2ZXJzL2dwdS9kcm0veGUveGVfcG0uYzoKPiA+ID4g
ICBpZiAocG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKHhlLT5kcm0uZGV2KSA+IDApCj4gPiA+ICAg
V2l0aCAtRUlOVkFMIHRoZSBjb25kaXRpb24gaXMgZmFsc2U7IHhlX3BtX3J1bnRpbWVfZ2V0X2lm
X2luX3VzZSgpCj4gPiA+ICAgcmV0dXJucyBmYWxzZSwgc28gY2FsbGVycyBiZWxpZXZlIHRoZSBk
ZXZpY2UgaXMgbm90IHVzYWJsZS4KPiA+ID4KPiA+ID4gZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9w
b3dlci5jOgo+ID4gPiAgIHJldHVybiBwbV9ydW50aW1lX2dldF9pZl9pbl91c2UoZGV2KSA9PSAx
Owo+ID4gPiAgIC1FSU5WQUwgIT0gMSwgc28gdGhlIGhlbHBlciBhbHdheXMgcmV0dXJucyBmYWxz
ZSB3aGVuICFDT05GSUdfUE0uCj4gPiA+Cj4gPiA+IGRyaXZlcnMvZ3B1L2RybS9pbWFnaW5hdGlv
bi9wdnJfcG93ZXIuYzoKPiA+ID4gICBpZiAocG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKC4uLikg
PD0gMCkKPiA+ID4gICAtRUlOVkFMIDw9IDAgaXMgdHJ1ZSwgc28gdGhlIGRyaXZlciBhbHdheXMg
dGFrZXMgdGhlICJyZXF1ZXVlIiBlcnJvcgo+ID4gPiAgIHBhdGggaW5zdGVhZCBvZiBwcm9jZWVk
aW5nIHdpdGggdGhlIGFjdGl2ZSBkZXZpY2UuCj4gPiA+Cj4gPiA+IHNvdW5kL3NvYy9zb2YvZGVi
dWcuYzoKPiA+ID4gICBpZiAocG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKHNkZXYtPmRldikgPT0g
MSkKPiA+ID4gICAtRUlOVkFMICE9IDEsIHNvIGQzX3ByZXZlbnRlZCBpcyBuZXZlciBzZXQsIGNv
cnJ1cHRpbmcgZXhjZXB0aW9uCj4gPiA+ICAgZGVidWcgYWNjb3VudGluZy4KPiA+ID4KPiA+ID4g
ZHJpdmVycy9pb21tdS9tdGtfaW9tbXUuYzoKPiA+ID4gICBpZiAocG1fcnVudGltZV9nZXRfaWZf
aW5fdXNlKGRvbS0+cGxhdF9kZXYtPmRldikgPD0gMCkKPiA+ID4gICAtRUlOVkFMIDw9IDAgc2tp
cHMgdGhlIFRMQiBmbHVzaCwgbGVhdmluZyBzdGFsZSBJT01NVSBtYXBwaW5ncy4KPiA+ID4KPiA+
ID4gZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jOgo+ID4gPiAgIFRocmVlIGNhbGwgc2l0
ZXMgdXNlIFdBUk5fT05fT05DRShlcnIgPCAwKSBvciBzaW1pbGFyIHBhdHRlcm5zLgo+ID4gPiAg
IC1FSU5WQUwgPCAwIHRyaWdnZXJzIGEgc3B1cmlvdXMgV0FSTklORyBvbiBldmVyeSBjYWxsLgo+
ID4gPgo+ID4gPiBkcml2ZXJzL21lZGlhL2kyYy9pc2w3OTk4eC5jOgo+ID4gPiAgIGlmIChwbV9y
dW50aW1lX2dldF9pZl9pbl91c2UoZGV2KSA8PSAwKSAgKHR3byBjYWxsIHNpdGVzKQo+ID4gPiAg
IC1FSU5WQUwgPD0gMCBjYXVzZXMgdGhlIGRyaXZlciB0byBhbHdheXMgc2tpcCByZWdpc3RlciBw
cm9ncmFtbWluZwo+ID4gPiAgIHdoZW4gIUNPTkZJR19QTS4KPiA+ID4KPiA+ID4gZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRlYnVnLmM6Cj4gPiA+ICAgaWYg
KHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZShkZXYpIDw9IDApICAodHdvIGNhbGwgc2l0ZXMpCj4g
PiA+ICAgLUVJTlZBTCA8PSAwIHByZXZlbnRzIGFueSBkZWJ1ZyBzdGF0aXN0aWNzIGZyb20gYmVp
bmcgY29sbGVjdGVkLgo+ID4gPgo+ID4gPiBGaXhlczogYTQzNmI2YTE5ZjU3ICgiUE0gLyBydW50
aW1lOiBBZGQgbmV3IGhlbHBlciBmb3IgY29uZGl0aW9uYWwgdXNhZ2UgY291bnQgaW5jcmVtZW50
YXRpb24iKQo+ID4gPiBGaXhlczogM2I4NWI3YmNjY2Y0ICgiZHJtL3hlOiBGaXggZGlzcGxheSBy
dW50aW1lX3BtIGhhbmRsaW5nIikKPiA+ID4gRml4ZXM6IDY3MmM0NzM1NzZjYSAoImRybS9nbWE1
MDA6IFJld3JpdGUgcG93ZXIgbWFuYWdlbWVudCBjb2RlIikKPiA+ID4gRml4ZXM6IGIzMDI4OWU3
ZmE5MiAoIkFTb0M6IFNPRjogRml4IHJ1bnRpbWUgcG0gdXNhZ2UgY291bnRlciBiYWxhbmNlIGFm
dGVyIGZ3IGV4Y2VwdGlvbiIpCj4gPiA+IEZpeGVzOiBjMGI1NzU4MWI3M2IgKCJpb21tdS9tZWRp
YXRlazogQWRkIHBvd2VyLWRvbWFpbiBvcGVyYXRpb24iKQo+ID4gPiBGaXhlczogNTFlZjJiZTU0
NmUyICgibWVkaWE6IGkyYzogaXNsNzk5OHg6IEFkZCBkcml2ZXIgZm9yIEludGVyc2lsIElTTDc5
OTh4IikKPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+Cj4g
PiA+IC0tLQo+ID4gPiBDaGFuZ2UgaW4gdjMKPiA+ID4gLSBkcm9wIHRhZzogY2JiODE5YzM2M2M1
ICgibWVkaWE6IHJraXNwMTogZGVidWc6IENvbGxlY3QgaW5wdXQgc3RhdHVzIGJ5IHNhbXBsaW5n
IElTUF9GTEFHU19TSEQiKQo+ID4gPiBzZWxlY3RlZCBQTSBhdCBhcmNoIGNvbmZpZwo+ID4gPiAt
IGRyb3AgdGFnOiAwZjE4MWQzY2Y3ZDkgKCJpb21tdS9yb2NrY2hpcDogQWRkIHJ1bnRpbWUgUE0g
c3VwcG9ydCIpCj4gPiA+IHNlbGVjdGVkIFBNIGF0IGFyY2ggY29uZmlnCj4gPiA+IC0gZHJvcCB0
YWc6IDlkNThhYTQ2MjkxZCAoImRybS9pOTE1OiBGaXggdGhlIEdUIGZlbmNlIHJldm9jYXRpb24g
cnVudGltZSBQTSBsb2dpYyIpCj4gPiA+IGd1YXJkIGJ5IENPTkZJR19QTQo+ID4gPiAtIGRyb3Ag
dGFnIDcyNzUzOGE0YmJmZiAoImRybS9pbWFnaW5hdGlvbjogSW1wbGVtZW50IHBvd2VyIG1hbmFn
ZW1lbnQiKQo+ID4gPiBkZXBlbmQgb24gUE0KPiA+ID4gYAo+ID4gPiBDaGFuZ2UgaW4gdjIKPiA+
ID4gLSBuZXcgcGF0Y2hlcy4KPiA+ID4KPiA+ID4gQ2M6ICJSYWZhZWwgSi4gV3lzb2NraSIgPHJh
ZmFlbEBrZXJuZWwub3JnPgo+ID4gPiBDYzogbGludXgtcG1Admdlci5rZXJuZWwub3JnCj4gPiA+
IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgo+ID4gPiBDYzog
Sm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4gPiBD
YzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gPiBDYzogVHZydGtv
IFVyc3VsaW4gPHR1cnN1bGluQHVyc3VsaW4ubmV0Pgo+ID4gPiBDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiA+ID4gQ2M6ICJUaG9tYXMgSGVsbHN0cm9tIiA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBTaW1vbmEgVmV0dGVy
IDxzaW1vbmFAZmZ3bGwuY2g+Cj4gPiA+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwu
Y29tPgo+ID4gPiBDYzogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+Cj4g
PiA+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPiA+ID4gQ2M6
IFBhdHJpayBKYWtvYnNzb24gPHBhdHJpay5yLmpha29ic3NvbkBnbWFpbC5jb20+Cj4gPiA+IENj
OiBBbGVzc2lvIEJlbGxlIDxhbGVzc2lvLmJlbGxlQGltZ3RlYy5jb20+Cj4gPiA+IENjOiBMdWln
aSBTYW50aXZldHRpIDxsdWlnaS5zYW50aXZldHRpQGltZ3RlYy5jb20+Cj4gPiA+IENjOiBMaWFt
IEdpcmR3b29kIDxsZ2lyZHdvb2RAZ21haWwuY29tPgo+ID4gPiBDYzogTWFyayBCcm93biA8YnJv
b25pZUBrZXJuZWwub3JnPgo+ID4gPiBDYzogSmFyb3NsYXYgS3lzZWxhIDxwZXJleEBwZXJleC5j
ej4KPiA+ID4gQ2M6IFRha2FzaGkgSXdhaSA8dGl3YWlAc3VzZS5jb20+Cj4gPiA+IENjOiBCYXJk
IExpYW8gPHl1bmctY2h1YW4ubGlhb0BsaW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBQaWVycmUt
TG91aXMgQm9zc2FydCA8cGllcnJlLWxvdWlzLmJvc3NhcnRAbGludXguZGV2Pgo+ID4gPiBDYzog
UGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6
IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IFJv
YmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cj4gPiA+IENjOiBZb25nIFd1IDx5b25n
Lnd1QG1lZGlhdGVrLmNvbT4KPiA+ID4gQ2M6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxh
bmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+Cj4gPiA+IENjOiBNYXR0aGlh
cyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+ID4gPiBDYzogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+ID4gQ2M6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNo
ZWhhYkBrZXJuZWwub3JnPgo+ID4gPiBDYzogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmFAZmFzdG1h
aWwuY29tPgo+ID4gPiBDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVh
c29uYm9hcmQuY29tPgo+ID4gPiBDYzogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0
cm9uaXguZGU+Cj4gPiA+IENjOiBEYW5pZWwgQmFsdXRhIDxkYW5pZWwuYmFsdXRhQG54cC5jb20+
Cj4gPiA+IENjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+ID4gPiBDYzogVmlqZW5k
YXIgTXVrdW5kYSA8VmlqZW5kYXIuTXVrdW5kYUBhbWQuY29tPgo+ID4gPiBDYzogZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiBDYzogaW1hZ2luYXRpb25AbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+
IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gQ2M6IGlvbW11QGxpc3Rz
LmxpbnV4LmRldgo+ID4gPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gPiA+IENjOiBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+IENjOiBs
aW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiA+ID4gQ2M6IGxpbnV4LXNvdW5kQHZnZXIua2VybmVsLm9yZwo+ID4g
PiBDYzogc291bmQtb3Blbi1maXJtd2FyZUBhbHNhLXByb2plY3Qub3JnCj4gPiA+IENjOiBpbXhA
bGlzdHMubGludXguZGV2Cj4gPiA+IC0tLQo+ID4gPiAgaW5jbHVkZS9saW51eC9wbV9ydW50aW1l
LmggfCAyICstCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcG1fcnVudGltZS5o
IGIvaW5jbHVkZS9saW51eC9wbV9ydW50aW1lLmgKPiA+ID4gaW5kZXggZGU5ZTc1MThlY2VmMi4u
MWQ5ODNmZTU1YTE2YSAxMDA2NDQKPiA+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9wbV9ydW50aW1l
LmgKPiA+ID4gKysrIGIvaW5jbHVkZS9saW51eC9wbV9ydW50aW1lLmgKPiA+ID4gQEAgLTI3Niw3
ICsyNzYsNyBAQCBzdGF0aWMgaW5saW5lIGludCBwbV9zY2hlZHVsZV9zdXNwZW5kKHN0cnVjdCBk
ZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IGRlbGF5KQo+ID4gPiAgfQo+ID4gPiAgc3RhdGljIGlu
bGluZSBpbnQgcG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+
ID4gIHsKPiA+ID4gLSAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ID4gKyAgICAgICByZXR1cm4g
MTsKPiA+Cj4gPiBUaGlzIHNob3VsZCBiZSByZXR1cm4gMCwgYXMgd2UgZGlkIG5vdCBidW1wIHRo
ZSB1c2FnZSBjb3VudC4KPgo+IFRoaXMgaXMga2luZCBvZiBtb290IGJlY2F1c2UgdGhlcmUgaXMg
bm8gdXNhZ2UgY291bnRlci4KPgo+IEhvd2V2ZXIsIHRoZSBjYWxsZXIgbWF5IGFsd2F5cyB0YWtl
IHRoZSBvcHBvcnR1bmlzdGljICJpbiB1c2UiIHBhdGgKPiBiZWNhdXNlIHRoZXJlIGFyZSBubyBw
b3RlbnRpYWwgY29zdHMgcmVsYXRlZCB0byBpdC4KCk9mIGNvdXJzZSwgZm9yIHRoZSAhQ09ORklH
X1BNIGNhc2UgdGhhdCBtYWtlcyBzZW5zZS4KClBsZWFzZSBhZGQ6CgpSZXZpZXdlZC1ieTogVWxm
IEhhbnNzb24gPHVsZmhAa2VybmVsLm9yZz4KCktpbmQgcmVnYXJkcwpVZmZlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
