Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA56ACD4F26
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 07:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Wi5Iz79euJ+KcuDQBdCNBJSkHC0nsmN/+uGHjjieq8=; b=rU24tKXxnNQ2Qq
	DcumRCv3cuYVGe9LoIiBgLkuXHyhcFue1Q0i/LXX+JEl7pyG5iYI4VUPgswTEh2nu6T0oS5fXaa2v
	BNnXOGaUCOzxpI93Y1cttrtJWbe8amgxASPKxSTUqvW1FEvgO+s9jAxa/RnE3RFW8/6gdh47loZfc
	B8bUyoJmJRT88fKHhncH91pyIoiz0qpwYvzq8NNhxbomcekisRqc3aJJlTzRngZ24g/Cp2oxC8EeD
	fh1Y6Z0RObn2vMTWV+p3GFLULHgtFEm+wQbu3jY8rpvQctkBdR7O2j97qGa2JWEDo7TSIzCwuKS8u
	fogSRKHNZu36R3Ifpbag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd1OF-0000000AjMN-2mYz;
	Fri, 26 Jun 2026 07:54:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd1OC-0000000AjKZ-3UNf
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 07:54:18 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65Q6VfJa2823604
	for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 07:54:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LdCrsB5kraxwFS22WcsgSAW3K81gUc/ZtatyV38hTOA=; b=Juk1RPdRP9NfTSa3
	LHDLo09QanJHICW7nNNgBP4gYqhmvvebZQglUavidgHH33KLQxcRnQPg/sy2g8in
	GMy6Lbb6c5wPwDwR13jm+OktHX83hCMZ0/n5emJZZjsTAQzd5M/7TGftSQ8bv7Lj
	UYsw1uO6rnwrMXHgWOETiHhZJoe6FAL6SkscQOrjTixsniDfIVBy/YzpQP42b8oV
	mWv7pg9ASmi7CJ62sXYguicukrCiq+CxLlmBAKISK7GDxmw3lIOCrsk/CdBjZmzh
	W0Wxgp5OfPDvJajxCjd58JBSWXWag2sfDl7kZji3hB806L36fvvfTnChdtaEa1r9
	6IDN8w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f19m3tqx3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 07:54:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92158791d14so97666085a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 00:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782460455; x=1783065255; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LdCrsB5kraxwFS22WcsgSAW3K81gUc/ZtatyV38hTOA=;
        b=XH3LLzpWAPvB4rr5n3TkEUPvoUu5q3AJwzN7Ia3QtfvhMpw0VFwwVSQRnJFPyOVNNa
         mlvRI3L0n+O2y9qrhCEwQX+yWqT3UlG/d3BRhXt/sTx7HxDRp6WpDhTfvKtmPoNdgWiN
         cblko6sJvPmznUzN5sNyVbViFeU6kZm8WlorT5Ak/AiOJyi5QJY9VCOwBGMQ/KyiNz0W
         cVeFJanucXSo/2XqA/Wnf4aENWYDzkZCmTp4U9w8rXTtlPayCCaWU9OdtIZ6dR0gxuxe
         OPDNL7yGSBlELpv0rHRhT46Siif05O9lqNB8YfFwAA/Se9yI/50tAJnBw98GWumufgM8
         coIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782460455; x=1783065255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LdCrsB5kraxwFS22WcsgSAW3K81gUc/ZtatyV38hTOA=;
        b=qzi2QfE66T1VsSwI6sdtjq0XIRURnAh25Sn2pil2JHK6c+VGocxEFh/aOIQ8f48WH9
         behuucGOyANCDoxGpnfSVSZDHfOM/FbA9PlABucQSi+YL3IwD6svf3Kjqw2gFeB8Va+u
         d2mFHIqUynyydG8VJTSUiG8lJUfVWJi46ZIRmC+TN2r1HZ/FOCdVeT8ChszMlDuEGBSZ
         pGZIiTuhIb6XeBOVKiZYqdbXpIyLPW8GIVU7WB6tsUIvEHzWqGB9LuEL2nlA5yKwy7ES
         CngT/zF6I2hmnGuQzbfr0mjYgc6um43MoUx5YyxPuxnva7AWOagGZ1ZqgKWbCptaInLa
         bE1Q==
X-Forwarded-Encrypted: i=1; AFNElJ8nuoGs9SMGwpAA6KeVc3+8TIBCstmbgDENvPmm5oLJ3G8WzPrsE11VBmZZsMs9UluS8TTTBELa2GJrK3lSeQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9B8e62bkaHF94wEje/yfj0r2n6oX8vAIhaOWWl0hSLdvqjCeh
	Ntx4nqgwZHlge7dAWmHk4cQWfxM5GaPYZ+CslooX9cfDnjaCwdyBfftpZdBrGgmjj4V2KMp0aNl
	HYrdyNYBCcjiUiKu32uN4THFHdUZyJjJf626cak/VCBrQzAaesKn3/iUHnJOj8eSsMCQ4FQmM5z
	g=
X-Gm-Gg: AfdE7cmdeLK0svl5qTJy8UCt+sh7wontZ3rQA2QbtIboZN3gnxdnARkTwTEnvH44cQg
	61QXOx25pcicz+JVXIiuDx1yZ11G/L7ocosxzkE2s2UcTspqmC+ISh1ofWrM2HWgJZthbVjnMOf
	i2S8RzR7eIL3dHxXGKALoJDPDphWwO0RB7xYkE5dXaW2KMbLfShxAThqvf9OgRg3RFNS8TgH9wu
	X6kL1OWZJNUoL+hBVFfqnjOh1xpT7XaGV1nzlETg6SbbgRhaixgbHeDBOkryaagwcXXH2N8955w
	wcn+WZlcK4YP/0zJ8fwJc1BJk+ZHNnKQGKmGEsj0ROOZwgfl+SOaj8RmK8jcvK+LFoTDBhU2s75
	5zc+MX0/ONm3+yf/plmLjbAbYCpyFv5Pg0Rz/n9Y=
X-Received: by 2002:a05:620a:1b8b:b0:922:9cd7:897f with SMTP id af79cd13be357-9293b477292mr892439485a.4.1782460455062;
        Fri, 26 Jun 2026 00:54:15 -0700 (PDT)
X-Received: by 2002:a05:620a:1b8b:b0:922:9cd7:897f with SMTP id af79cd13be357-9293b477292mr892437585a.4.1782460454595;
        Fri, 26 Jun 2026 00:54:14 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:d8a4:9330:ebc2:b0c2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492690100c7sm62053745e9.12.2026.06.26.00.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 00:54:13 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Marco Scardovi <scardracs@disroot.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] gpio: rockchip: Fix generic IRQ chip leak and modernize resource mapping
Date: Fri, 26 Jun 2026 09:54:11 +0200
Message-ID: <178246044597.6231.3111036547946708998.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260607230504.35392-1-scardracs@disroot.org>
References: <20260607230504.35392-1-scardracs@disroot.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI2MDA2MiBTYWx0ZWRfX4/A9EmQ7IPZL
 gZnYbJAv6BYgERPA67b2WaTPDf/d3x6zmiBZ7OxidMmiAPcjQXXKMJzy7tb0GTw2KNQFVEoXo4C
 Q20kVd9POddYiEMbyzCKhd6D0O2Fhhk=
X-Proofpoint-GUID: QnRJ7_qtYJdX6Hf8VCAh2yQbp8tCLAR8
X-Proofpoint-ORIG-GUID: QnRJ7_qtYJdX6Hf8VCAh2yQbp8tCLAR8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI2MDA2MiBTYWx0ZWRfX/s/BEY+9sQ6p
 L9OeJW11yxMe0DZc6EeaNm6uBtGmDqLSPqV23QhGCY54dUacdGb1f1OqFMyKHnJTtDNHokuI856
 2Z2ZX157ayvNlP5cfZkYkb+BfaRYlIMCUfl606oLQ+bVf9gRxq5uNq/LQ8BuhgtsT0rqSMvRCBD
 uHduZ4mxwU9czWt1EE5ibrMOhPxXcILWLSNzhm3kOPb71V2w7x/z8O8XAW+w9HuFTiRkgeRy72o
 FMYLkh56M3JsJNQZPTIaGCTSKkXyYvlOWhKufdsrBQeA1z5r6Ed0UAyXHt+s0DUASxzFkMwEMcr
 rnpV0wJK+y4n3LqpSGUycfhmLjuxQ7pGZftnbGkaNqz82PGJKm4QjJ28aENcpjdGWUwULK0rj8A
 JX5w+m+VH5lRIOiWUKEXb+rkWqRUJ27B8ikvOOakM9GQOX6IxiXHF+TiLe9nY+GYiJzc5n/a/nz
 oHs4VWDflkkGnAlPMqw==
X-Authority-Analysis: v=2.4 cv=Vv0Txe2n c=1 sm=1 tr=0 ts=6a3e3028 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=bUU0xQWC7lQednYWYacA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-26_02,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 clxscore=1011 priorityscore=1501
 adultscore=0 malwarescore=0 impostorscore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606260062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_005416_880722_05647821 
X-CRM114-Status: GOOD (  11.11  )
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


On Mon, 08 Jun 2026 01:05:01 +0200, Marco Scardovi wrote:
> This series fixes a generic IRQ chip leak in the gpio-rockchip driver
> and performs two small cleanups to use standard platform device helper APIs.
> 
> Patch 1 fixes a leak caused by generic IRQ chips not being removed before
> IRQ domain teardown.
> 
> Patch 2 converts register mapping to use devm_platform_ioremap_resource().
> 
> [...]

Applied, thanks!

[2/3] gpio: rockchip: use devm_platform_ioremap_resource() to map registers
      https://git.kernel.org/brgl/c/c03c6a086d188dc5b52e7db2b2991ecead9bb669
[3/3] gpio: rockchip: use platform_get_irq() to retrieve interrupt
      https://git.kernel.org/brgl/c/c2e26f2408226de7464ba4cdcd86827e0a000db9

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
