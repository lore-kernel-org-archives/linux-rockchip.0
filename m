Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C7D606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=blLa6dMs;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=arm.com header.i=@arm.com header.a=rsa-sha256 header.s=foss header.b=Zhs8w9dy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HJeb2+HmD6R6M215kuo4A/sm2pe1F0qgrT0mKcxuNwI=; b=blLa6dMsM4fAw0KGRYnbji+BSW
	ZJGhkJ+XSFRtNktPw+Jbezu9if76QnUfIKUrufGErxFEqOjbYxQW7lPktIhDTke8dQXT/UPdGudiP
	SJTZtNEEPeO6ZawgLY26ohoOPVTNRQxBs+ZshS7S0GYhaaZtSwhGh8ElSib4f35xATPMZdhhyocNY
	vjHlHyU+l1eYITOt//gq5Owz1F6iVFF/ST5s5e4UbMHuK9OuJBhtBRB9u2yfXc+qDyL0uxltB+Up/
	yjzypDee/PyX6uJTUG3Xq/pMeZaKRiIp4IvdJWQFn2sO06GIPpKIN9DsWhg0dGt2lt1k4XcYQoHtx
	y29q8fig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnHk-0000000BpaF-3z3y;
	Fri, 30 Oct 2026 14:08:48 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnHd-0000000BpVS-3j4y;
	Fri, 30 Oct 2026 14:08:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54DEF1D13;
	Fri, 30 Oct 2026 07:08:37 -0700 (PDT)
Received: from [10.57.13.127] (unknown [10.57.13.127])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5527C3F673;
	Fri, 30 Oct 2026 07:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1793369320; bh=DG8ml6HdWY7nXgpm84li/+TfZGx2R9DU1QknKf5wDmo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Zhs8w9dyCcMJza+mmkrMI4zvEaQ9V7oMRNrr7YwDltZfpROxSUGA17E604tHMSqJ3
	 S8wv3nm6jvkspvjvFqnQX8bFB/aHXRx29n+Aqujk5sVi7MCRBVLgPas/ASA8lUDUiV
	 ANiHU03veXB7ves89JdMh512DiKVGunRkZX2aQss=
Message-ID: <c614e414-0f9b-464f-90bb-dc1cd63b09d2@arm.com>
Date: Fri, 30 Oct 2026 14:09:08 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] powercap: dtpm: Add RK3588 hierarchy
To: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>, rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
 Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kselftest@vger.kernel.org
References: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
 <50f06fc06f0e83ee59ecf9037071e02344ecd15b.1793288783.git.daniel.lezcano@oss.qualcomm.com>
Content-Language: en-US
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <50f06fc06f0e83ee59ecf9037071e02344ecd15b.1793288783.git.daniel.lezcano@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_070842_033692_22BDD204 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 10/29/26 16:56, Daniel Lezcano wrote:
> The RK3588 has three CPU frequency domains, with CPUs grouped into
> three cpufreq policies.
> 
> Add a DTPM hierarchy for the RK3588 with one CPU node per cpufreq
> policy, represented by cpu@0, cpu@400 and cpu@600. Group the three CPU
> domains under a virtual package node attached to the RK3588 root node.
> 
> Add the RK3588 compatible to the Rockchip DTPM match table to select
> the new hierarchy.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
> ---
> Changes in v4 (since v3):
> - Rebase on v7.3; no code or commit-description changes.
> 
> Changes in v3 (since v2):
> - Rebase on v7.3-rc7.
> - Fix __initdata placement and the RK3588 match-entry indentation.
> - No functional changes.
> 
>   drivers/soc/rockchip/dtpm.c | 48 +++++++++++++++++++++++++++++++++++++
>   1 file changed, 48 insertions(+)
> 
> diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
> index 5ae00680602f..664764f4b460 100644
> --- a/drivers/soc/rockchip/dtpm.c
> +++ b/drivers/soc/rockchip/dtpm.c
> @@ -62,8 +62,56 @@ static struct powercap_hierarchy rk3399_hierarchy __initdata = {
>   	.nr_nodes = ARRAY_SIZE(rk3399_nodes),
>   };
>   
> +static struct dtpm_node rk3588_cpu0 = {
> +	.type = DTPM_NODE_DT,
> +	.path = "/cpus/cpu@0",
> +};
> +
> +static struct dtpm_node rk3588_cpu4 = {
> +	.type = DTPM_NODE_DT,
> +	.path = "/cpus/cpu@400",
> +};
> +
> +static struct dtpm_node rk3588_cpu6 = {
> +	.type = DTPM_NODE_DT,
> +	.path = "/cpus/cpu@600",
> +};
> +
> +static struct powercap_node rk3588_nodes[] __initdata = {
> +	[0] = {
> +		.name = "rk3588",
> +		.data = &rockchip_virtual,
> +	},
> +	[1] = {
> +		.name = "package",
> +		.parent = &rk3588_nodes[0],
> +		.data = &rockchip_virtual,
> +	},
> +	[2] = {
> +		.name = "cpu0-cpufreq",
> +		.parent = &rk3588_nodes[1],
> +		.data = &rk3588_cpu0,
> +	},
> +	[3] = {
> +		.name = "cpu4-cpufreq",
> +		.parent = &rk3588_nodes[1],
> +		.data = &rk3588_cpu4,
> +	},
> +	[4] = {
> +		.name = "cpu6-cpufreq",
> +		.parent = &rk3588_nodes[1],
> +		.data = &rk3588_cpu6,
> +	},
> +};
> +
> +static struct powercap_hierarchy rk3588_hierarchy __initdata = {
> +	.nodes = rk3588_nodes,
> +	.nr_nodes = ARRAY_SIZE(rk3588_nodes),
> +};
> +
>   static struct of_device_id __initdata rockchip_dtpm_match_table[] = {
>   	{ .compatible = "rockchip,rk3399", .data = &rk3399_hierarchy },
> +	{ .compatible = "rockchip,rk3588", .data = &rk3588_hierarchy },
>   	{},
>   };
>   

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
