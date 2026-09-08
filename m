Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C62BC79FAE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 14:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYu6Imch2brVmC5VLUu2+JBBRO98Y2q/TlEJeB3FByg=; b=xE4n/Jh7dwxa0Y
	woNmRlXwGX2Jb51H6uB33RGXh8gclFPh0mh8cuI2yz3fHMwHaxRH55fjjy2mgxaFnz6/5AuAboyor
	uB69nSfxy2fHNtsUF2eX0KBEvQg+QLi7Y3V1Tuc7/J7ps/ppqcpcmDdxOFb/bh30EXtlpzyaK70GZ
	hgeM2z7Kqth8P6ZVmyJI8LBhloxJ4uPeEH9mxpB00hdH4A51vvBXbzg8IzkiNHrJbyWw4u7rDg0/y
	n9jCmGlby9vkVRkkeC9FdEGBdzcuqW9ZkMXwQjSOfY+BPkBZU4D5HyrV2r2VGYUscZHMNxCCgIOya
	hc5kUhhp49g4XsV1Jwyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xHz-00000009NKG-06Ai;
	Tue, 08 Sep 2026 14:59:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xHQ-00000009MfR-1CwO
	for linux-rockchip@bombadil.infradead.org;
	Tue, 08 Sep 2026 14:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=9gGv4RW/KPav2gQfSDhKD53xcmE10Fw9benIy8+8ItU=; b=nO7GaqoPSptzf3vmPmRDqjgP/0
	seOAl7epcEclP9i6mqYHPuvOLbKxxV7/OJSeHzTot35aEtMzS5YYEt4Eh5KJ+d7FjjGxWphIiMIRZ
	Iebc98uvhs2hDs/f3F+7hyA8yumZ5QQ4zJd4656+uveYamoON1uWG1FsOUI1BPiszr0pkLIUGE9Wl
	hkZ2MQ3B6DoeqFY8CpK9FdsCiYpcurbRGJaLQZHfxlbjziyKryorX29ZhcyyoMB4Bi2j1JLLLT3pv
	4KPl8N4wHW1/Lz7++5WvYXyfbXotFX2TlhOjDOjfGkBS1xw7Ey3geJCvxzGB/mML2RLZHoVjFVoq1
	qBncxiqA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3xHK-0000000HZgA-2sEg
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 14:58:34 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688EivOa3298141
	for <linux-rockchip@lists.infradead.org>; Tue, 8 Sep 2026 14:58:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9gGv4RW/KPav2gQfSDhKD53xcmE10Fw9benIy8+8ItU=; b=fhZ9/+FcBma2UoTD
	yx8RiDGQeA89UBrkt9HPmeDQphCeVPkDcs32VvlWRAPLbF2a6j0sxvPqmQ9cLwOM
	UFUXxq3izFvQ1vHgFMoV6rgrni91hQ6lksUJA8i0aH2xd1+ahoZacW2K0BC6Xk7k
	NX2gru3rpj4ISqhJ58WWbSaRntSTLMIvZzJUqdGTW6weR3hxwXVTnBuUm/HJ3Fng
	V+MXtKLytbhBLNYYvjwopmM8PBfHDE0vB7pN8sLyYGKVVQkhHFxw9bdwMzVmO9mQ
	tds0I3JpTcfs0vgbQUclEiHvO67alIqeyhDj+CVCYpbBBUfQaxYylQMSH9UJzhDT
	LiuN0g==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjhkj0wxt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 14:58:28 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-97cb18cfa04so3173349241.0
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 07:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788879508; x=1789484308; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9gGv4RW/KPav2gQfSDhKD53xcmE10Fw9benIy8+8ItU=;
        b=kg7krkPccaVoA8JMJYx+Ut58X6/GYHsYpOxb933vF6PrmXWX0lily0OXWXBDMedtoG
         xXll1qLO7sBeXAWBtbZYdduqe4gRJCsFkTm9Qbt6zDx2GlMqnuk13MNKRNbkFasITwd7
         odcDh28WRUVlPHAuuDPhpJzruwMvElbhHwORsV7QhCV/cbjQDXuQpP/4/XsRbkcb8YsT
         RDhpqWvxA2ECIS3uLss/yFYTBoDafADtZul6SLSij/8V8/neZzF4mqP7t5TpwZlB4hhz
         pUk6AoqcKnMgG44h6yb/jTPfrpFfyQfl/hxClUJt/sBoYag6mtQD1JM3fxuF5B5Ss/zo
         +gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788879508; x=1789484308;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9gGv4RW/KPav2gQfSDhKD53xcmE10Fw9benIy8+8ItU=;
        b=Nu8eLONwjAvMz/UnoUx/ZvcMxG53MoYTG2oayYsnzqjmc+vdPkcvfdjrD39X4WUmQD
         P+XysIeFZLcsd9lN1epuM/BY1wQKp8ct+T7mk91NHC+seaXGDt/b8GCIAnjaFZtTxPRO
         g6NiiJF4U6nZhQ54hLC8BMd5uXoxbLO+rCBacoDhFeOZm5lYH7ISfAMc5saXp4DZ5ulf
         C3i72V0DZTAgYmCf1j2DQAQh3ULeuJhbLzZVEp8dVO39xUSdCpDil/P4wctxIaNRVrSt
         mE6arnztCAfyg2ZdC4OyFOcVSvgX73ozRdcmTW19mGB8i7e51Jpakn2AH+/23DxTYPlr
         MZdA==
X-Forwarded-Encrypted: i=1; AKwUvBwdl9KN+HYo/9i9VB0Bt3S6K46tA0Ofi12xDKUfV9SDMzsndDnXcPGf8Pzap/XlFT+ujmrLdhOqs0f1pQmqEg==@lists.infradead.org
X-Gm-Message-State: AFuF++lXxPHUqZtjqWL3Xe86hJJpDc5WN/ZC6Lr84ENiuScVHIn2qGyy
	GsLKocHlwyp0jzbn1Rv82TPXtBTKVPO33yUopdrfhvPPAbqo7FgTfnB4Q//FdNSgp5lg/8ItgbD
	/PQ0OrUiek/zDuuPGZ1LVUXSS4GCiWI5+EVfE+Q7rEm+vbDQRfiGI8QrEmCQDMBZ+vINVFlCWE6
	g=
X-Gm-Gg: AYBFou3VfFy+/DYzCOV8+MkD8h9WMRTjQKrnaPo1VjYtoa5G9AT3iyj+ax5i8BVAcU/
	bLabU7VUt4Tgbia5CVNUCzAyWLWwXlW6RcAbDI5DOaTUJhm0p7Uz4wE+yfh0qGRQqgejTqqmWXx
	qxubS7iEq+9izGXYObYO0pJLXTdfIaoOy2Kr/tvc6riCjzXQquavpc9yTF5pWLhyTE2/BULcU4j
	Mr1F2o0bfBkxHnTbbp4dQuz5sm1DwfXb1b9iA63VP7O/Nt8qGK+MZUkc/BGvXGzbWEhzq8nqSU5
	3iyIZ4E3Akur8PCg8mgcaCVKvTUQ2tSeKg6vBik2YIcb7XWtXg2cl7atVuAzpekxf3vqXM5xS39
	tMqCiHCDefmaBz2pFblC+ZSaGIpxA
X-Received: by 2002:a05:6102:509f:b0:785:e444:15e4 with SMTP id ada2fe7eead31-78a4a87d391mr13120722137.6.1788879507804;
        Tue, 08 Sep 2026 07:58:27 -0700 (PDT)
X-Received: by 2002:a05:6102:509f:b0:785:e444:15e4 with SMTP id ada2fe7eead31-78a4a87d391mr13120696137.6.1788879507318;
        Tue, 08 Sep 2026 07:58:27 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:79a2:f118:df09:fe51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485958f1493sm25191276f8f.37.2026.09.08.07.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:58:26 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 16:57:29 +0200
Subject: [PATCH net-next v14 10/10] net: stmmac: qcom-ethqos: add support
 for sa8255p
MIME-Version: 1.0
Message-Id: <20260908-qcom-sa8255p-emac-v14-10-ec212b747a7d@oss.qualcomm.com>
References: <20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com>
In-Reply-To: <20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Romain Gantois <romain.gantois@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Bartosz Golaszewski <brgl@kernel.org>, Radu Rendec <radu@rendec.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org, brgl@kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6330;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=UGHFNsex6g8X5xVVwk+2JQcFTMSBk5UzaI5QwWng/ec=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqoCJwh58An3JjyYLR5ghJ2POhmXpnXTF5Aq10w
 hRnRD+AS9CJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaqAicAAKCRAFnS7L/zaE
 wzzqD/wNB0EOmwihyBQoJBkeJGz5FMWpEG6G05ZmuQCOHJBy9yuRIA0IYpAFJVVh0R2xGt65Mvg
 1MQG7oQ7bg0XiCrgkvpaArONbBNaRUEi4WeY5A/T1wPbjryezG373hNq8XnABg7vAhdtGptqomq
 YhujFfNG/QyLg+WkyRF38iPSzX8T1psLo04+zwETWsIOi2WhAXlSDTLKX4oZ+2k3UIe6Ob1KKS+
 ewa90enAY9Vg59g59B3cF6jEIlS5/LrCO6k4ZD++QsILFYtDdc+dpPGiUK+ls/8fsML3plS4n2m
 uSu44VH/gsdF+kObPrTu/R1sRy6PBgBbm4bTIEoCcN/71l2wn0l6kqHk5/9GG612Li7g/X1shGY
 tVdJmX/vKlfW7FW8JNqeH+WCZP3+OOQFjh1tMNb4sP6UY9n8hQKZySXfoi7n9WE6hBZes71QzvA
 T03MzqHs/S1nQ7ehZI9T5+iVJcnRY/tFoQyiG83sLhuxiCQv4jVYsGo59yMM9loQAikUJBIb+jE
 /16rowut5V6Z717SIZLwK/vrUMGTHSzCSFSpqIsWcCllmDuIMtXUlcbbtIKJ6HlflhnH0vBdfcC
 ARn8vAY/QQLk8x2nI8QMFZoxMJSe2pvOr05TveDFArlHnjKoz4zMmM5AEo9Ml+4g2rrpRlP1+RT
 5in0Rpl5vuCYcHg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE2MSBTYWx0ZWRfXwIn/mP+om9ei
 q9PXX0t+vQLmilagqxYGQXkldRC1G4fgW3TYSgDDIlrbj23c9+9xf59HHpnE7bM8+b+PnPeD2Mw
 ZG8uzgLFoOl1dJjglXrNDFgyagAeESY=
X-Proofpoint-GUID: N3LM5yR7LnarrBSBVmxq8ePUsYWEx23t
X-Authority-Analysis: v=2.4 cv=VYjH+lp9 c=1 sm=1 tr=0 ts=6aa02294 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=MNMbB-VoU2yS88OP0PEA:9 a=QEXdDO2ut3YA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-ORIG-GUID: N3LM5yR7LnarrBSBVmxq8ePUsYWEx23t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE2MSBTYWx0ZWRfX0L/Em9kZqRsM
 TsCQlInZKFpP/+LVfwP7mx73HY7FB0GwhVW2rfh4xHk6pYbrxnGVjjfNhBxyBzqlcvW6nnVtyEc
 djldZc9hVK10Ck0tc6LLeood7pnJYAxIZrlFW9ESpbCcQdRKOV0bTMVqrP2naAKcOPB2sIkCqVi
 HGFmonNwlMRRKMktFuBQADRPbGNctuw9H/+Wl4745u3Cmzyf4p9ECzQARvH3Cnzrmw/LqVkpJef
 FtJPI4ydg69MzGlS3Yv38+qj1ZDUzLp71tM+bJ1EmZOCqKZuRsff3nxe+LWuXBbTjIU3daE0oax
 aXVaZjYexFTNJCs+/2OgwX4npJEquCNkBOidO1PfYHC/f0HAphZR2uheIvlj9Q0wuaTcUEcvZcF
 XbEc3wSQquBtfNcqE+4xBW77YdgUoqk0vYqtsOPPY1K3oWhE/Z3w/PIi2842uoKJ1QUs0ueHB1i
 /ZZFexXv/PNhTed6PJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_155831_224197_E739BC2E 
X-CRM114-Status: GOOD (  28.11  )
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

Extend the driver to support a new model - sa8255p. Unlike the previously
supported variants, this one's power management is done in the firmware
over SCMI. This is modeled in linux using power domains so add a new
emac data variant and a separate setup callback.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 107 +++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 509a5368e69a8fa440bf3b4f58f7b09a683558f3..3d4bc950a72ac0d0d9515bf9148e865463ddc0a3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -98,6 +98,11 @@ struct ethqos_emac_driver_data {
 	const char *link_clk_name;
 	struct dwmac4_addrs dwmac4_addrs;
 	bool needs_sgmii_loopback;
+	/* Fixed PTP reference clock rate, used on SCMI platforms where
+	 * firmware does not implement the clock protocol allowing linux to
+	 * query it.
+	 */
+	unsigned long ptp_clk_rate;
 	int (*setup)(struct qcom_ethqos *ethqos,
 		     struct plat_stmmacenet_data *plat_dat);
 };
@@ -108,6 +113,7 @@ struct qcom_ethqos {
 	struct clk *link_clk;
 	struct phy *serdes_phy;
 	phy_interface_t phy_mode;
+	struct dev_pm_domain_list *pds;
 	const struct ethqos_emac_driver_data *data;
 };
 
@@ -207,6 +213,8 @@ static void ethqos_set_func_clk_en(struct qcom_ethqos *ethqos)
 
 static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
 			     struct plat_stmmacenet_data *plat_dat);
+static int ethqos_scmi_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat);
 
 static const struct ethqos_emac_por emac_v2_3_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x00C01343 },
@@ -311,6 +319,30 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	.setup = ethqos_hlos_setup,
 };
 
+static const struct ethqos_emac_driver_data emac_v4_0_0_scmi_data = {
+	.has_emac_ge_3 = true,
+	.needs_sgmii_loopback = true,
+	.dma_addr_width = 36,
+	.ptp_clk_rate = 230400000,
+	.dwmac4_addrs = {
+		.dma_chan = 0x00008100,
+		.dma_chan_offset = 0x1000,
+		.mtl_chan = 0x00008000,
+		.mtl_chan_offset = 0x1000,
+		.mtl_ets_ctrl = 0x00008010,
+		.mtl_ets_ctrl_offset = 0x1000,
+		.mtl_txq_weight = 0x00008018,
+		.mtl_txq_weight_offset = 0x1000,
+		.mtl_send_slp_cred = 0x0000801c,
+		.mtl_send_slp_cred_offset = 0x1000,
+		.mtl_high_cred = 0x00008020,
+		.mtl_high_cred_offset = 0x1000,
+		.mtl_low_cred = 0x00008024,
+		.mtl_low_cred_offset = 0x1000,
+	},
+	.setup = ethqos_scmi_setup,
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -756,6 +788,80 @@ static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
 	return 0;
 }
 
+static const char *const ethqos_scmi_pd_names[] = { "core", "mdio" };
+
+static int ethqos_scmi_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat)
+{
+	const struct dev_pm_domain_attach_data pd_data = {
+		.pd_names	= ethqos_scmi_pd_names,
+		.num_pd_names	= ARRAY_SIZE(ethqos_scmi_pd_names),
+		.pd_flags	= PD_FLAG_DEV_LINK_ON,
+	};
+
+	struct platform_device *pdev = ethqos->pdev;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	ret = devm_pm_domain_attach_list(dev, &pd_data, &ethqos->pds);
+	if (ret < 0)
+		return dev_err_probe(dev, ret,
+				     "Failed to attach power domains\n");
+
+	/*
+	 * The SerDes lane, its clocks and the MAC AXI/AHB clocks are owned by
+	 * firmware and brought up through the SCMI power domains above. The
+	 * MAC wrapper itself, however is in the kernel's register space: the
+	 * wrapper bit that loops the PHY TX clock into the MAC's clk_rx_i -
+	 * needed because no recovered RX clock exists yet - is not
+	 * configured by firmware. Without it, clk_rx_i never toggles and the
+	 * DMA SW-reset polled in dwmac4_dma_reset() never completes.
+	 *
+	 * Map the wrapper and program the same loopback/functional clock bits
+	 * the non-firmware platforms rely on (see ethqos_clks_config) so the
+	 * RX clock is present by the time the DMA engine is reset.
+	 */
+	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
+	if (IS_ERR(ethqos->rgmii_base))
+		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
+				     "Failed to map rgmii resource\n");
+
+	/*
+	 * Register clks_config to run on every subsequent runtime resume,
+	 * which stmmac performs after the power domains are on but before
+	 * serdes_powerup() and the DMA reset. This alone isn't enough for
+	 * the very first reset done from stmmac_open(), though: probe()
+	 * fakes the device into RPM_ACTIVE without invoking the resume
+	 * callback, so whether clks_config() has run by then depends on
+	 * whether the device has already gone through one real suspend/resume
+	 * cycle in the meantime. Call it here explicitly so the wrapper is
+	 * always configured before the first DMA reset regardless of that
+	 * timing.
+	 */
+	plat_dat->clks_config = ethqos_clks_config;
+
+	ret = ethqos_clks_config(ethqos, true);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+	if (ret)
+		return ret;
+
+	plat_dat->clk_ptp_rate = ethqos->data->ptp_clk_rate;
+
+	switch (ethqos->phy_mode) {
+	case PHY_INTERFACE_MODE_2500BASEX:
+	case PHY_INTERFACE_MODE_SGMII:
+		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_sgmii;
+		break;
+	default:
+		break;
+	}
+
+	return 0;
+}
+
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -843,6 +949,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 static const struct of_device_id qcom_ethqos_match[] = {
 	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
+	{ .compatible = "qcom,sa8255p-ethqos", .data = &emac_v4_0_0_scmi_data},
 	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_v4_0_0_data},
 	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_v3_0_0_data},
 	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_v2_1_0_data},

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
