Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04AE606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 02:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k94tJySO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=oTcgO0/C;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=FO33QBb9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HbYbP6lQwck3QFka310vIPGIKxfxOtIiMyYOB5o4bcM=; b=k94tJySOZVfvJ6mU+sVZAE5aNp
	1HWV6D6yxuHMLpC5PsBi+irPSy3/b6lbz5gY0rBlk/wibwvk4InXmBb7RToSk2kJm9j+0wrJ0CGCT
	ST8tWx3sbl5/eCl41PRzMIDdSYAomr0X2+6Lb57XQxB+Y7dVqFWDhx/0+U0ds3TwcFCOTsKT2VSDo
	ON1tvFqLF9uXT772rA5gfgzcns3fz5wXCorYN2S10KK3sL5NQJddKJDHa03Kvregzm9BaBl50lKay
	b+Od0ChduIfroaNJ05pCBIFT+NyaCd5miqUUKqtWfUiR+SB+/9J+TvmTKxYCg5a9zJXlL1O1Jytw0
	IAtKmhvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRgbK-0000000BTBr-2rET;
	Fri, 13 Nov 2026 02:01:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRgbH-0000000BTAl-1t81
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 02:01:12 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ACMsxXO3582693
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 02:01:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+JYMMpCVPwHEySjKZ4MO385s
	OzZpk/O6E4s1/29JGB0=; b=oTcgO0/CxjO0e8z4oVQVprI6VdN15UA8lJQGJu1q
	tyBu/wAD8y1YGXonrQ0yztdHxEhCm3SwHIk1lMTpsGcUZDPuogrRC0K1FLmB2e2R
	py1qDcOWDo4FuUtr43UHcAagssgUhG8AuI2oT0NVCyrA6QVjVqjCLzIuZ8whj/O3
	+Np4j5FpijpQY8IqKUQd6+U9QSZUQpzZLbbFIpTOSMKI1CfTpRVW5Ow/faJ4rZ03
	DXyZ2oiGWQueegJxT2xdRXqWp4zKj/VbOJqSXVNQ1yW+s+YIyCy8fXOy9cCBNeLF
	ub3sa3SscZxq36yv4FsrOsB92oi6TfXJYFICDv01gL6JVA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwbx3305s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 02:01:09 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-36a3451ea93so477666eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 18:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794535269; x=1795140069; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+JYMMpCVPwHEySjKZ4MO385sOzZpk/O6E4s1/29JGB0=;
        b=FO33QBb9p7FS/pZGOHymDOAadFqbulCu4ecx9FWWZ2cVGbhiXmN6qdbWQKzofUPg8/
         aP64tg4jeh9krG7tTT6EzibmqYuG1M4u9yGLopRZPs4usfMNtAFOq7piXmYsdo/d4KHo
         wo1Hy7MIW7ZO5t2+PzMXHGdOZs1G4kjeIjvKd2CZfiNM4UJFTC0s8Gzxm4ucbPswpYcl
         c+0OAsrIgm89hH2h9CS2cWxpOPLXRhs9Ebqd1/GlFQR6YsHuMmWvtRf5oizNwET/YXdY
         f8BtIOIrv/jCZqNu/2KXlGkMYi6NrEnQQAZdSr8omQttdLZng1zv4uRK71AR1xuyFN8i
         h3XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794535269; x=1795140069;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+JYMMpCVPwHEySjKZ4MO385sOzZpk/O6E4s1/29JGB0=;
        b=uUvIx89sRpCx7M57rV1uS+UpvTsYrHNnFn7WnliQd8tgzHJeJVe8RroZTxPEknbaKH
         5CUhMU13a3YXQusA2zsRgW0JfIUT4razMXTsekWIpMSd3B4Ye5B4Rv/FLEkyHf0EzE3t
         MNOX161XoBcTd7NpkeYQqxJcHWHPmlbiQSE70Qv7iPnlHBNnsn0GrpRGZamUGFuLKqbu
         8c4tsKWeGl8EjURtcOjxZmar1+C1+0vPOzXgyCpNksMb4nF6WojV2kuH/g1hb59c374W
         HjgHnWdmaH84B2pN7XhRN1ZJEXYpsErp5Dm2Dumj/H/VzQqDWFU9HeBI0FmfvnZXiW1Q
         P/gA==
X-Forwarded-Encrypted: i=1; AL+hErGKiYiD/NBeW4jV5LlmtRPrH0rtXi9e4XiqliIcSBzGwA4BQG/CpvnzUy6Ww9WjleUhpaTUMb5KN0sQwaFG+g==@lists.infradead.org
X-Gm-Message-State: APuU4Z8Y/gfjplGy9jgeIWy/katD8gqx0lFHmHZyCVjHR7GaPMQQlYLM
	PKJzq5GXr6SzCiKRumFt3OdVdBq5lfPVBaxFznk5YZBcyG930oFCXnAv5gpYj/LtFuY0nH/5asE
	iHrsT66FrM+uKHMYodOaSnKwBLJ2OLdpF+Z6oNkEJikAKPJCHqq6s9u6G+hufOWI0qBtj4kj/4f
	g=
X-Gm-Gg: AYBFou2ijqmb8XQ3eonVFgNczNkkmypSWlDu2vph1Z81IKc0oC+kUS/0lqutdN1a5g5
	C4be5H+xDr27zB8m9BbgOELhMqfzegXAd3fOXC6QMPzTNhXaMe1GpH5fmNhaj0qILtwY17euHkp
	FufClLmtP05NiFJ3tqSjU4lFDb77Y3s0DrX0jvVRUKRUFRclWeZENyuZ+MmV1SoIiJRxTjPOURX
	kvRX536uqX59IJ/gfMjLn1ETLIyOCybqM4GAMlbkTzMj9shZxNZKfoOMjnukS5mhhjohRwZPY52
	MQ2yuhi7TmOnviY4bS+O/YMmJ2wXt8KY0huIdIxLyDTpygyR0aoxwZimQ2OSl43E5YwxU1HiOcH
	P+iyQexQub+ill4A7QpqDDcQoZ18pD+a92NYMZ5P3za7A/7qGdR1c8ERv6Cg5LKT7CkWquZZL5D
	OrnbMnum67f/HYKHnJo5uQFw==
X-Received: by 2002:a05:7301:8617:b0:370:cc56:b61a with SMTP id 5a478bee46e88-37967dd6065mr854067eec.39.1794535269037;
        Thu, 12 Nov 2026 18:01:09 -0800 (PST)
X-Received: by 2002:a05:7301:8617:b0:370:cc56:b61a with SMTP id 5a478bee46e88-37967dd6065mr854021eec.39.1794535268371;
        Thu, 12 Nov 2026 18:01:08 -0800 (PST)
Received: from hu-petche-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-37955f01d68sm2319806eec.17.2026.11.12.18.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 18:01:08 -0800 (PST)
Date: Thu, 12 Nov 2026 18:01:06 -0800
From: Peter Chen <peter.chen@oss.qualcomm.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
        Vinod Koul <vkoul@kernel.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Igor Paunovic <royalnet026@gmail.com>, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
        kernel@collabora.com,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v18 0/7] usb: dwc3: introduce Rockchip glue driver
Message-ID: <avZvYlYyL3Doc8qt@hu-petche-lv.qualcomm.com>
References: <20261021-b4-rockchip-dwc3-rockchip-glue-v18-0-60000d03fca2@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261021-b4-rockchip-dwc3-rockchip-glue-v18-0-60000d03fca2@collabora.com>
X-Authority-Analysis: v=2.4 cv=S+5MU4sP c=1 sm=1 tr=0 ts=6af66f65 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=bC-a23v3AAAA:8 a=QX4gbG5DAAAA:8 a=HK-piK3jiULfHIWbwDwA:9 a=CjuIK1q_8ugA:10
 a=bBxd6f-gb0O0v-kibOvt:22 a=FO4_E8m0qiDe52t0p3_H:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAwNyBTYWx0ZWRfXxsB7cwWsprV4
 DwEf3o7foh1Lb81LZ52WVb5Y/cyx3mbIA5lxc51GQCvjWEAKAvjt8FIlMMCrrP+muPwoe/oDeTK
 Yil6XSYAiKrKuNXzrFfmii6DBaYGY/ECRy+R0yKb3OG4+r08fwMIwaJiEeqqfB4yG6RUq+ekq6E
 dMEB7Pgod1+MtC/rn0NgfGbnrjfwIMqCTfHiDmDbtKYgxJvrgCvsh8JEmryLLTbwmhT5mro7l1M
 fvED46pNStvliOUIJ1bppqw+cFI6VCEeTs1ZosPX48bWU3htE/SEE5FiHGIK0Rhlfq6h6BGA2J+
 wGxJdKUXcmPgRYVYnFR49S4H2vwFO3BU8u2q6dMVK1GWNHS7rwKa3OQrvtSqMmVC1b4NEaCok77
 ml14ax4HZc5lfmMT1Pv23+8AdYbkIksg7UqQKN+oqF+/yE37FNJi1NkN8e7jQu84QcZvjXsM7tU
 pZMdjDDdjYVdVo1TJ/g==
X-Proofpoint-ORIG-GUID: KO6DIvWwVgjoNyFIEzCD_1S4jIkawitz
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAwNyBTYWx0ZWRfX1PGyfkiNTinH
 0CabQXAohADLyAcivw4w3MMK5Fij2GBf3M2BWRoVo7MYfN7RGbvK3PQ4SwjEMwxkRm5IaDPO1Ik
 mDEEndc7ana1c8aGhhWlq5lD2/mEXFI=
X-Proofpoint-GUID: KO6DIvWwVgjoNyFIEzCD_1S4jIkawitz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_04,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1011 phishscore=0 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_180111_499315_41161474 
X-CRM114-Status: GOOD (  32.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-21 20:05:25, Sebastian Reichel wrote:
> - drop generic PHY reset notifier API; I discussed this series at Linux
>   Plumbers Conference with Vinod Koul and he prefers a local driver
>   hack/quirk instead

Hi Sebastian and Vinod,

Sorry to jump out late, do we really decide to use private callback between
USB controller and USB Combo PHY, and notify PHY's reset events for
controller? Many platforms which support USB/DP altmode feature need this
requirement, besides Rockchip, Qualcomm and the platforms use Cadence USB
controller and PHY also need this.

For this scenario, USB controller works at USB3 mode (also configures PHY for
USB3) first. Later, Type-C/DP event tells PHY that it needs to work for DP(4lane),
since this event doesn't go to controller now, sudden switch PHY from USB3
to DP (4lane) will turn off PIPE clock, and cause all controller's event which
needs PHY (PIPE) clock abnormal, that's the reason why controller needs
this PHY switch (reset) notification and let the controller know it needs
to work at USB2 mode from now on.

So, it is more like a general requirement, but not quirk for special platform.

Peter

> - rework USBDP and DWC3 rockchip glue for the local driver quirk
>   using direct function calls
> - Ensure that the reset handler in DWC3 is only called when the PHY is
>   initialized (and thus DWC3 is running)
> - Also set vbus in the last patch when dwc3 is configured to device only
>   mode (in contrast to dual-role mode being in device mode).
> 
> Changes in v16:
> - Link to v15 (sorry, I missed force setting the revision for this
>   part in the series split, so the series says v1 in the patch subject):
>   https://patch.msgid.link/20260915-b4-rockchip-dwc3-rockchip-glue-v1-0-763bb546824e@collabora.com
> - Update first patch to also build the PM functions even when
>   PM is disabled
> - Add new patch for defining an empty usb_udc_vbus_handler stub
>   when USB_GADGET is disabled
> - Add dependency to Rockchip DWC3 glue, which disallows the
>   configuration with USB_DWC3_ROCKCHIP=y and USB_GADGET=m
> - Collect tags
> 
> Changes in v15:
>  - Link to v14: https://patch.msgid.link/20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com
>  - Avoid #ifdef for CONFIG_PM in the new glue driver (Thinh Nguyen)
>  - Do not add #if IS_ENABLED around the DT compatible blacklist in the
>    generic driver, using the glue driver should be mandatory as the
>    generic driver results in arbitrary system hangs. Thinh Nguyen suggested
>    updating Kconfig for this, but did not clarify what that means.
>    Current Kconfig works the same way as the other mandatory glue
>    drivers.
>  - Split series to simplify review
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Sebastian Reichel (7):
>       phy: rockchip: usbdp: Track PHY power state
>       phy: rockchip: usbdp: Add reset hook support for dwc3
>       usb: dwc3: rockchip: introduce glue driver
>       usb: dwc3: core: add post PHY registration hook for platform glue
>       usb: dwc3: rockchip: add USBDP PHY reset quirk
>       usb: gadget: define stub for usb_udc_vbus_handler
>       usb: dwc3: rockchip: fix USB-C reconnect in gadget mode
> 
>  drivers/phy/rockchip/phy-rockchip-usbdp.c |  82 ++++++++++-
>  drivers/usb/dwc3/Kconfig                  |  13 ++
>  drivers/usb/dwc3/Makefile                 |   1 +
>  drivers/usb/dwc3/core.c                   |  17 ++-
>  drivers/usb/dwc3/core.h                   |   9 ++
>  drivers/usb/dwc3/dwc3-rockchip.c          | 227 ++++++++++++++++++++++++++++++
>  drivers/usb/dwc3/trace.c                  |   3 +
>  include/linux/phy/rockchip-usbdp.h        |  31 ++++
>  include/linux/usb/gadget.h                |   5 +
>  9 files changed, 383 insertions(+), 5 deletions(-)
> ---
> base-commit: 8f56fdf3d8cb9f1dbdc93bf9ac816698aa6f70b7
> change-id: 20260914-b4-rockchip-dwc3-rockchip-glue-979ea3735d43
> 
> Best regards,
> --  
> Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> 

-- 

Thanks,
Peter Chen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
