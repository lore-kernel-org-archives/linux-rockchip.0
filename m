Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DBD9CF6C17
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wv5S1uZTJFVvLAr4B1LNLbq2nnGAkrwnYic5H+SG2wI=; b=k79Qv64A1zq+IK
	KBbcqEByA/jhvEM/y4cOf5bdg0MRYzg+DIiGWdLqj1x8lDpX0i4NBOlQ0HIrsGAe20EOPFF1XBIFi
	OW3jVtxyrdPkHz4mvnBOD76W7nYB/Y+OrW1eYkOHjFfrjlCo7iRGOoXLkjgBjnHsD1lcJUE0l+U50
	a2uPb5ZBaPkSNpo9YZ++36qiokgdsxxXmEjmk0zAm+YdEBZ0Lv+HxqRTRNUyDqr4OxiDrdDc1vU65
	A3JPgl32sZR45yTNbNObjCs+sVj1jQoqlHoGQvMolmMfsxgJ4F9VTixsWkuBBnEqLfm018uF0q5z4
	ubQzNJVdtqyTTVoSyHPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdPaz-0000000EUh8-398I;
	Wed, 07 Jan 2026 09:12:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdPax-0000000EUgb-0GE2
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 09:12:48 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6073dJ5R3888916
	for <linux-rockchip@lists.infradead.org>; Wed, 7 Jan 2026 09:12:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hHAUzxwohVtVS8qEFuX6Wc1xyTV2ML0rdi33N1nF55Q=; b=PN8UjXowzxAvq379
	+WruZgDBAuqdCSnsFmiiDoSslxtVltEPeBg2qZEMBYNJRnv/Mx8vOJGoou9SyTIi
	Atolo/Swc4S7FAy8nYxk4+uV3F9kkm/6HOVikE2B2ubxoa5pRaRc7qhFvQm0xNFD
	QzsZ7oLYFURoZQhASH/elchCInrr1WvxPyd+485q00pFkB0XjwFXsUaVkqw4FjRP
	UUaD0ehPRG/Gr3jbNbS3KUMXgjZLX77DxXERynJseegZGns7IS31b7VU074uL3vT
	JjO6a+ko196B9QrWAjOoJyFStTgjDc4BO8UXW2YkoPr3/NDVZrtetpQoh6x4iTF4
	q/ww5g==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh6a0jpkp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 09:12:45 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34ea5074935so2267358a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 01:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767777164; x=1768381964; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hHAUzxwohVtVS8qEFuX6Wc1xyTV2ML0rdi33N1nF55Q=;
        b=MaDIMsj7N6nF0nNL/qKPAtCyRgeetypY4NcR7JQljTmwexAGpS/cs1wgKkhohY82AX
         VeGi+e7pu9ox/0UWV3a9ygAuE0eHciNnfyeMyjk7p+1OXstC/yTP1djbC8DKwfJRPLD3
         YH0Ei8gw+7yAYtB7Ea5TNQmvM9fB2WbubrRDjM3DlnOdDqdRce4niYvtQenOZrO7DkO4
         q4pdAl72Td+ZyloTh7G/Gm5nubCUugWjiyBAx630Qx5NyUY/7qxRCDAzN7EuXOiJJ8LF
         KzLZGGGga383luf+YwPFEGxxfLfF/6z7mfz3fP5ASkITAgDe0v3iLA9Nke4mc9J+VFh1
         PZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767777164; x=1768381964;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hHAUzxwohVtVS8qEFuX6Wc1xyTV2ML0rdi33N1nF55Q=;
        b=irC/Y2iqnO31WDWQYoSHH+th4Z7vZLjo2e+yuTPiL2AufjcFhpq6zmrMQ2+yiThEZv
         cGOC20K24pbUYcle1a3fXbecpqI1AXktgjgiGIEiHbGLLngQhozDSRVMqPJTlgbR9IkV
         JMS9mkslUbTcKVR2S5CGX78306O/n2vDvA4CPQSqBaKtSggWJFGHJkjS2J2UV/VI7cIR
         r9jPiKcp6yuOnrswt/hl3XO4u9rKG68YIif6fdgKZWcpD8DBGOtELWuwYBzIty7SvqqY
         sbToPmcdp53pQ7WoqFosSxI/uhUaB2XweNfVoNi+ggNyyc0vFUIGAcuXNpUn5jmzfmTZ
         lPYg==
X-Gm-Message-State: AOJu0YyEg2M8Xpz6cB6rtbX5BnkGpU+Bs3vGil8IGVQSR9sZpI2IUNjb
	Cnm5INfBz7xKaVkCtK6Lg3YELRles615zHjmpxFemp1g0Sy0Dx/OMpYlziM/z4Q4iM4snzVrYHO
	ZCilF5TmW9xhZ23+QZ99gq9s4EnvknY9v5QMVFSoHqV+wdlCq5/gELlKUgi8leX6/4NRnoiLPeu
	A=
X-Gm-Gg: AY/fxX4qhEaWXzvOOYjdONmzLS1ZrM8Loaw+WNAMIisxoPne0klDn8ybFFOPzKaPMg1
	zX0NRN3jBu/qcFvr1pYcY/CNrH2CHum7ltDMTyPVUFZ7u/79v2rtiR51z7sRJ6Tr8aEydeJHw5S
	J/Ghc+iuTUYE9C/cijmq0bOs5FN0uysviLa1ipQkdDjEyzsnGYG7OA7WWt0r5tYFevkRqh3tzkk
	jIGpMu+5r2pGFE6Zzxm+7t3adX4SGN7T/Mgff5/KhNUPeeqohOOFwgu5uYx1cb5CoKRluncxhx3
	ePrD650TV7oJD+JlHjiHVwKO45ZEEqXZKBWi8sogsUeDCDvzX/QIbLyUcbXz4nY3JugwzuPiiv/
	6Eh6F/30lPaP6H4wfFqkaLYDX/9DczOYkR+NijSBz1yDDHEw=
X-Received: by 2002:a17:90b:1d12:b0:340:e8e9:cc76 with SMTP id 98e67ed59e1d1-34f68c4ff6amr1877895a91.11.1767777164374;
        Wed, 07 Jan 2026 01:12:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFM6Zy2UFfivjhElXjRRuklrVapne06gvWk7bAjM5RXr3nEWbLf6lxUhBfV7oDr5Z8sqtPPBw==
X-Received: by 2002:a17:90b:1d12:b0:340:e8e9:cc76 with SMTP id 98e67ed59e1d1-34f68c4ff6amr1877874a91.11.1767777163839;
        Wed, 07 Jan 2026 01:12:43 -0800 (PST)
Received: from [192.168.55.102] ([223.196.168.13])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f8afba8sm4418849a91.13.2026.01.07.01.12.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 01:12:43 -0800 (PST)
Message-ID: <8d4e73f5-b4da-4aca-a2b2-b607be8c245a@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 14:42:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] PCI: dwc: Add LTSSM tracing support to debugfs
To: Shawn Lin <shawn.lin@rock-chips.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>,
        linux-pci@vger.kernel.org
References: <1767691119-28287-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <1767691119-28287-1-git-send-email-shawn.lin@rock-chips.com>
X-Proofpoint-ORIG-GUID: WWomWHFIib-qBBcDLCfXBNFNCM0g4IMx
X-Proofpoint-GUID: WWomWHFIib-qBBcDLCfXBNFNCM0g4IMx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA3NCBTYWx0ZWRfX3Y5uF5nbqcdu
 2BqAx7ESdkbOFgdKb+9rDot6G5zU9dVFUFKW+PjXZLMv1PWX0MyZQsdbNuz88Lv19QSO3uaznDn
 5GlDYSju4/9XJgZEfCXlltaS8YjptV6kU/dpoKlbSgG375GkqWmY8ypiaTzuOyYvc3p5mU7S8mP
 zTv6na0MbtjX97fKRU07JRO3LOwYc3p65cGHUc5MFlguXG8gu+LsSonjBH8Cg5YDo0+uSM+rVn0
 eaWw7aojVV7rbnmRtJ3Z6EOOS1x+e+pObM6YH7s+5zfNcozfO6jHAyCBIGegP2NZlPo5e65MBEK
 uSpDiN3+V5B0RKa7MiMgw3OgAY/ujBtf+upG9Zukr1Ktkalh0p8MjIDUvzh42aelUmjcsIy5xOq
 kr8KOU/WtH+YH526gTty0GWE+lXP1SuQlXjOexBrTyCAZl4xfEqvLRqmTWBccBauwWr045pAJEw
 bmHz4tsqJup/aPDxktw==
X-Authority-Analysis: v=2.4 cv=MtdfKmae c=1 sm=1 tr=0 ts=695e238d cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=N6F11WvAWHOX8D43ukpQPg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=s8YR1HE3AAAA:8 a=qaNWRtGRZj0PP8Kx_68A:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 clxscore=1011 impostorscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_011247_229582_62DDF462 
X-CRM114-Status: GOOD (  22.62  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 1/6/2026 2:48 PM, Shawn Lin wrote:
> Some platforms may provide LTSSM trace functionality, recording historical
> LTSSM state transition information. This is very useful for debugging, such
> as when certain devices cannot be recognized. Add an ltssm_trace operation
> node in debugfs for platform which could provide these information to show
> the LTSSM history.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>   .../controller/dwc/pcie-designware-debugfs.c  | 44 +++++++++++++++++++
>   drivers/pci/controller/dwc/pcie-designware.h  |  6 +++
>   2 files changed, 50 insertions(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-designware-debugfs.c b/drivers/pci/controller/dwc/pcie-designware-debugfs.c
> index df98fee69892..569e8e078ef2 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-debugfs.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-debugfs.c
> @@ -511,6 +511,38 @@ static int ltssm_status_open(struct inode *inode, struct file *file)
>   	return single_open(file, ltssm_status_show, inode->i_private);
>   }
>   
> +static struct dw_pcie_ltssm_history *dw_pcie_ltssm_trace(struct dw_pcie *pci)
> +{
> +	if (pci->ops && pci->ops->ltssm_trace)
> +		return pci->ops->ltssm_trace(pci);
> +
> +	return NULL;
> +}
> +
> +static int ltssm_trace_show(struct seq_file *s, void *v)
> +{
> +	struct dw_pcie *pci = s->private;
> +	struct dw_pcie_ltssm_history *history;
> +	enum dw_pcie_ltssm val;
> +	u32 loop;
> +
> +	history = dw_pcie_ltssm_trace(pci);
> +	if (!history)
> +		return 0;
> +
> +	for (loop = 0; loop < history->count; loop++) {
> +		val = history->states[loop];
> +		seq_printf(s, "%s (0x%02x)\n", ltssm_status_string(val), val);
> +	}
> +
> +	return 0;
> +}
> +
> +static int ltssm_trace_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, ltssm_trace_show, inode->i_private);
> +}
> +
>   #define dwc_debugfs_create(name)			\
>   debugfs_create_file(#name, 0644, rasdes_debug, pci,	\
>   			&dbg_ ## name ## _fops)
> @@ -552,6 +584,11 @@ static const struct file_operations dwc_pcie_ltssm_status_ops = {
>   	.read = seq_read,
>   };
>   
> +static const struct file_operations dwc_pcie_ltssm_trace_ops = {
> +	.open = ltssm_trace_open,
> +	.read = seq_read,
> +};
> +
>   static void dwc_pcie_rasdes_debugfs_deinit(struct dw_pcie *pci)
>   {
>   	struct dwc_pcie_rasdes_info *rinfo = pci->debugfs->rasdes_info;
> @@ -644,6 +681,12 @@ static void dwc_pcie_ltssm_debugfs_init(struct dw_pcie *pci, struct dentry *dir)
>   			    &dwc_pcie_ltssm_status_ops);
>   }
>   
> +static void dwc_pcie_ltssm_trace_debugfs_init(struct dw_pcie *pci, struct dentry *dir)
> +{
> +	debugfs_create_file("ltssm_trace", 0444, dir, pci,
> +			    &dwc_pcie_ltssm_trace_ops);
Can we have this as the sysfs, so that if there is some issue in 
production devices where debugfs is not available,
we can use this to see LTSSM state figure out the issue.

- Krishna Chaitanya.
> +}
> +
>   static int dw_pcie_ptm_check_capability(void *drvdata)
>   {
>   	struct dw_pcie *pci = drvdata;
> @@ -922,6 +965,7 @@ void dwc_pcie_debugfs_init(struct dw_pcie *pci, enum dw_pcie_device_mode mode)
>   			err);
>   
>   	dwc_pcie_ltssm_debugfs_init(pci, dir);
> +	dwc_pcie_ltssm_trace_debugfs_init(pci, dir);
>   
>   	pci->mode = mode;
>   	pci->ptm_debugfs = pcie_ptm_create_debugfs(pci->dev, pci,
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 5cd27f5739f1..0df18995b7fe 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -395,6 +395,11 @@ enum dw_pcie_ltssm {
>   	DW_PCIE_LTSSM_UNKNOWN = 0xFFFFFFFF,
>   };
>   
> +struct dw_pcie_ltssm_history {
> +    enum dw_pcie_ltssm *states;
> +    u32 count;
> +};
> +
>   struct dw_pcie_ob_atu_cfg {
>   	int index;
>   	int type;
> @@ -499,6 +504,7 @@ struct dw_pcie_ops {
>   			      size_t size, u32 val);
>   	bool	(*link_up)(struct dw_pcie *pcie);
>   	enum dw_pcie_ltssm (*get_ltssm)(struct dw_pcie *pcie);
> +	struct dw_pcie_ltssm_history * (*ltssm_trace)(struct dw_pcie *pcie);
>   	int	(*start_link)(struct dw_pcie *pcie);
>   	void	(*stop_link)(struct dw_pcie *pcie);
>   	int	(*assert_perst)(struct dw_pcie *pcie, bool assert);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
