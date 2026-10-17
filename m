Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C6FCCF2CF
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 16:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6jTmc2rvRi2A8z1WNfsiiCLe4UTCt9blwPQypOEzX8=; b=W2FXdNYlYTCslZ
	GkPbPcoXkoFHPFcvIDGP1VUi1++oReFb5/oxJKdSOb5reup9Q5CZiwS8a1D5/g0bGFewBo0WvlZ1Y
	JcCQ2NE967KsGSfzMdTAAFRYm6eKe8iHClV5dSsuNUa/Z2Cckk89RNiAcXyEk+x0l7Np16wcsYMSq
	taeOoc2mLYLaGCt4PjlGgvDa02vvfhJUM7HNI8nlKZpJzgi5L9Xcr4xw3NvOG56ot2yd2XTKVQIEN
	NVhIVx2uEDgZlawjDyeKEeKhagmzYc9lIoW+0sSrq7bGsnvp8TkEPiVPZbcbFOE7g7Sb0qKsxYPv1
	IBRZQRypmdLuLAWeIp4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7Uj-00000004wlU-19QO;
	Sat, 17 Oct 2026 16:42:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7Ug-00000004wix-0OO4
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 16:42:52 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HGA3c8019873
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 16:42:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=A5QXkyLgqve2yg7aR0QbgBy6
	tWTAd+S8xlmq02cu4VU=; b=lNhoZ5KmND8CPcI2ztJrmEz30rkXHlfA6ZXPZ/BF
	dIjaldaBjswQDQz152ahMBvv8elLhUYIikte8R33fvDM1XFYB4bJJwxbmkydvHs9
	eShIPCBWf8E5pwxIyBHGeuDQy6qdqbdVggs0w6DviKRSBV4mr+P3cTJTp4wdY74Z
	5KS3ymg6PgRQRKbX/+YVIu7Re+hZZAA+q5SytRzeNXF0f5SCG5w6ckx/tUicRxJW
	NwxJhIQeClRVZ0OtvWLuWHL0rqEzv6Gfy7aqB1TktkhdKtYwuruOrhAkDsgnYJJ5
	WmRvDQrRAWN6umuhYE7m35Y2hOg40tfgMs8wZ1wwrVlYWw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc26k17fr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 16:42:49 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-359b81ad4e8so1325128eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 09:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792255369; x=1792860169; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=A5QXkyLgqve2yg7aR0QbgBy6tWTAd+S8xlmq02cu4VU=;
        b=KHHRRs9D9rXxwuqStD72wm0lV8UbC9/+xsXoWFejfstpoY2ng3UpEUh4VTUJ6VUe5Z
         BVFqFQ1rtfv8Z1lSfwY+vwTYDVI6yf2+Sg2R+hcF+KYZ0+6fgKJpZ0oqWBzq57MiGSJ1
         cqYqakSV5AzsVKLRxZkOHPTGC9bqSNA1zFo5558/rG8jG+thrBwW9G7/skx0bop+zq/r
         Re4zS4R4wcpUkjYb8v5rrIWR4NdvhDUa+614Jvb3q017u+Nt3tSqHcHsXsk+Bilkra0t
         xEMoTBuoETFYF6Ng/RXrjxKCRYUILeBgzBifug5f46XooI/AMGekq287lDAlxtXb6tXp
         31Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792255369; x=1792860169;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=A5QXkyLgqve2yg7aR0QbgBy6tWTAd+S8xlmq02cu4VU=;
        b=f4lmaR2X/xySKHtWIcVsU9gvJ4J08QOZEF90mxBebp8nEe70Cs5yONQJkz+HySQtol
         +2kDODB7fl0SiBJzCDRTkjc1PDu5GYzTS5MIFHdVjADAF+9yaj4Up/qUJ74EqQARZ9ma
         KHldts4Po/pnnKsenS6IFj0T90C3ppiHEhQPg/4i7UekhVHCURSmLyiY8sCvuEZOMmod
         9uIoZgKsDpo5YlUrDr8/Wt97yLQC0Ptv6Ov3gqHILKX/qdUGWvb332S5SIX7wwlGIOYo
         d/WkdvWIt4+K2ubPWGgy/JqSWj5t2ly4UlPYPiAXSMN7fc4n0UNElrQpYZHSXGkSg657
         P/pQ==
X-Forwarded-Encrypted: i=1; AKwUvBzqHCvLddbQIz4i7tYwTweehF6WUNCb2z4FSKSPmdy7hP5KwUAFbjgj89JmiCw8AdyRfRxOW9NkqXkDQkW18Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYIvkJnaYL9YIES5p0udn4P6KKepALX77i7I7+tny90+cwENNolz
	zWAyFV9HFsZnC3wOuWDMbVugnWODdle2q5Ap4PdEq2zNLNB+lepgKu+reTK2QvTjdcv0N4uQABm
	ctU1ti/2vXYRPhbZbYd5xfEbtzqOJxOGMIqZ1LWywM6aD8MdmfqgkqH5bjQ1PO1KgRMyyGrNc0S
	U=
X-Gm-Gg: AYBFou1ndvTUI3QQE4qtA3ooyvs1mg4mnuzWWLcvMq0QeXTC6Dfpsf6FJ0MyWIrSD1R
	pGr6E8Kz7Q4k+kO/jxH2HiL6AoQhmRH7oadkckedLEWGaxPj19IwI8p4dqpylAxzuYgW//x3y7z
	8NFBgiekpirsTGUwhfkcdaQ5g7ryYVXthmij90URvVcM8PUI+KGUWI9nThvY3gMaheS6N5yF0iN
	KqjX8ZSmQwg5JVCax3fOJJ2xZ62tKXgxIU3U5QT2INd0rKBEriiuyM2WFbe41E68eCIHoA/n9XP
	2cdJ9pllsRvswsqbrft2iSp06h41RRp8UiTwQID6U9WRz4An7Tf0d/+ekchU3ET2y9u2LB3Bas7
	emUFskIVgZviJBg==
X-Received: by 2002:a05:7022:7e89:b0:14d:ef19:246f with SMTP id a92af1059eb24-18513e7b18emr4689740c88.45.1792255368763;
        Sat, 17 Oct 2026 09:42:48 -0700 (PDT)
X-Received: by 2002:a05:7022:7e89:b0:14d:ef19:246f with SMTP id a92af1059eb24-18513e7b18emr4689692c88.45.1792255368055;
        Sat, 17 Oct 2026 09:42:48 -0700 (PDT)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm15041602c88.5.2026.10.17.09.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 09:42:47 -0700 (PDT)
Date: Sat, 17 Oct 2026 22:12:32 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
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
        Romain Gantois <romain.gantois@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Eric Dumazet <edumazet@kernel.org>, Radu Rendec <radu@rendec.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH net-next v16 5/7] net: stmmac: qcom-ethqos: reuse the
 address of ethqos_emac_driver_data
Message-ID: <atOleDtybJde/UE8@oss.qualcomm.com>
References: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
 <20261014-qcom-sa8255p-emac-v16-5-0266c2ead980@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261014-qcom-sa8255p-emac-v16-5-0266c2ead980@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2NiBTYWx0ZWRfXz625R/0bIdsH
 JnPfBjj3KMl5qKPVxFT+j904JlN70qQhWFSAGA5bUuxsdivf7lbNPLAahlBoAjSxzqM9t5YDA2m
 1FZjNaO0ucxnxx/IU6iC+vzRRqZhtkKfctm0XKNNuvyUzTwcG4smTx6KAaoYpupYMmQbC1BeX+F
 IW8sCjgmkWdjDnAHH+KQZXkcz6L7WIi0kA2st+cDqmJqA7/JaFQxcavd8OBC41BJ7DTey7Ybim+
 qgx26C4sVNLPmfZUQo2wjZxXYbrJB5OYXPoqANQnZh3alL0U33/x6by1hC4SCg0Y8y+wbdRZCyf
 kUWlASbNxU6xpPf9XUYMBtetxV+AfAu1jWEFwetl6U58aoBBlhbIERKqxr0WS71MUkP8dUe46rR
 FnH32CRBtAICAFst+/dCZWImBl+eDntnjkNPzagypswXjIqETvDZ40rAh47q8QiC0+E6ztn2nGH
 FFx5VkErjB4i03Oq54A==
X-Proofpoint-GUID: xhM7l06tJAv2kHYc8fJHJncg4XTg0bmf
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2NiBTYWx0ZWRfX/Ris7ktCjoxn
 I3jvqXLtMgkBz4kd6WhJvKpQlUaHH2Ajk30kligpKy1rqZKp+KUTHQsUgKBPjzaQwFF5giweIbK
 kUB6PXi4H2RhL1rxCj9nq05NfkbVTas=
X-Proofpoint-ORIG-GUID: xhM7l06tJAv2kHYc8fJHJncg4XTg0bmf
X-Authority-Analysis: v=2.4 cv=Cowq4X4D c=1 sm=1 tr=0 ts=6ad3a589 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=XX1oeNa5M8xgm1Jp0F0A:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_094250_418942_FEE38619 
X-CRM114-Status: GOOD (  13.31  )
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

On Wed, Oct 14, 2026 at 02:36:44PM +0200, Bartosz Golaszewski wrote:
> Instead of needlessly copying the fields of ethqos_emac_driver_data into
> struct qcom_ethqos, just use the address of the former as a reference.
> It's .rodata after all. This is done in order to avoid having either two
> calls to of_device_get_match_data() or having to extend the latter with
> another field when adding support for SCMI.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---

After testing it on a couple of legacy non-SCMI boards, I did not find
any issues with this patch, so:

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Reviewed-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
