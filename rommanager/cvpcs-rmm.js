{
	version: 1,
	homepage: "http://ccroms.net/",
	donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=UXH6LPZL9E5XW&lc=US&item_name=CCRoms%20%28CVPCS%29&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted",
	mirrors:
	[
		"http://files.ccroms.net/download.php?q="
	],
	roms:
	[
	// ========================================================================================================= //
	//                                                                                                           //
	// TANZANITE BUILD                                                                                           //
	//                                                                                                           //
	// MOTOROLA DROID2 (Droid 2)                                                                                 //
	//                                                                                                           //
	// ========================================================================================================= //
	{
		name: "Tanzanite 2.0.2 (Froyo)",
		summary: "Beta",
		device: "droid2",
		product: "Tanzanite",
		incremental: 2020,
		modversion: "Tanzanite-2.0.2-DROID2",
		file: "tanzanite/froyo/2.0.2/release/tanzanite-2.0.2-update.zip",
		screenshots:
		[
		"http://i.imgur.com/Mfjr8.png",
		"http://i.imgur.com/RqCTS.png",
		"http://i.imgur.com/9NLJL.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "tanzanite/froyo/2.0.2/release/tanzanite-2.0.2-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		}
		]
	},
	// ========================================================================================================= //
	//                                                                                                           //
	// OBSIDIAN BUILD                                                                                            //
	//                                                                                                           //
	// MOTOROLA DROIDX/SHADOW (Droid X)                                                                          //
	//                                                                                                           //
	// ========================================================================================================= //
	{
		name: "Obsidian 2.0.2 (Froyo)",
		summary: "Beta",
		device: "droidx",
		product: "Obsidian",
		incremental: 2020,
		modversion: "Obsidian-2.0.2-DROIDX",
		file: "obsidian/froyo/2.0.2/release/obsidian-2.0.2-update.zip",
		screenshots:
		[
		"http://i.imgur.com/Mfjr8.png",
		"http://i.imgur.com/RqCTS.png",
		"http://i.imgur.com/9NLJL.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "obsidian/froyo/2.0.2/release/obsidian-2.0.2-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		}
		]
	},
	// ========================================================================================================= //
	//                                                                                                           //
	// EMERALD BUILD                                                                                             //
	//                                                                                                           //
	// HTC PC36100 (Evo 4G)                                                                                      //
	//                                                                                                           //
	// ========================================================================================================= //
	{
		name: "Emerald 2.0.2 (Froyo)",
		summary: "Stable",
		device: "supersonic",
		product: "Emerald",
		incremental: 2020,
		modversion: "Emerald-2.0.2-PC36100",
		file: "emerald/froyo/2.0.2/release/emerald-2.0.2-update.zip",
		screenshots:
		[
		"http://i.imgur.com/Mfjr8.png",
		"http://i.imgur.com/RqCTS.png",
		"http://i.imgur.com/9NLJL.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "emerald/froyo/2.0.2/release/emerald-2.0.2-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		}
		]
	},
	{
		name: "Emerald 1.1.1 (Froyo)",
		summary: "Alpha Testing",
		device: "supersonic",
		product: "Emerald",
		incremental: 1110,
		modversion: "Emerald-1.1.1-PC36100",
		file: "emerald/froyo/1.1.1/release/emerald-1.1.1-update.zip",
		screenshots:
		[
		"http://imgur.com/rnrHl.png",
		"http://imgur.com/9NTTB.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "emerald/froyo/1.1.1/release/emerald-1.1.1-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		},
		{
			name: "Theme",
			options:
			[
			{
				name: "Stock (Default)",
				urls: [""]
			},
			{
				name: "Black Bar",
				file: "emerald/froyo/1.1.1/themes/black_bar-1.1.1-update.zip"
			},
			{
				name: "Incognito",
				file: "emerald/froyo/1.1.1/themes/incognito-1.1.1-update.zip"
			},
			{
				name: "Incognito (Red)",
				file: "emerald/froyo/1.1.1/themes/incognito_red-1.1.1-update.zip"
			}
			]
		}
		]
	},
	// ========================================================================================================= //
	//                                                                                                           //
	// RUBY BUILD                                                                                                //
	//                                                                                                           //
	// HTC ADR6300 (INCREDIBLE)                                                                                  //
	//                                                                                                           //
	// ========================================================================================================= //
	{
		name: "Ruby 2.0.2 (Froyo)",
		summary: "Stable",
		device: "inc",
		product: "Ruby",
		incremental: 2020,
		modversion: "Ruby-2.0.2-ADR6300",
		file: "ruby/froyo/2.0.2/release/ruby-2.0.2-update.zip",
		screenshots:
		[
		"http://i.imgur.com/Mfjr8.png",
		"http://i.imgur.com/RqCTS.png",
		"http://i.imgur.com/9NLJL.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "ruby/froyo/2.0.2/release/ruby-2.0.2-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		}
		]
	},
	{
		name: "Ruby 2.0.0 (Froyo)",
		summary: "Stable",
		device: "inc",
		product: "Ruby",
		incremental: 2000,
		modversion: "Ruby-2.0.0-ADR6300",
		file: "ruby/froyo/2.0.0/release/ruby-2.0.0-update.zip",
		screenshots:
		[
		"http://i.imgur.com/Mfjr8.png",
		"http://i.imgur.com/RqCTS.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "ruby/froyo/2.0.0/release/ruby-2.0.0-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		}
		]
	},
	{
		name: "Ruby 1.1.1 (Froyo)",
		summary: "Stable",
		device: "inc",
		product: "Ruby",
		incremental: 1110,
		modversion: "Ruby-1.1.1-ADR6300",
		file: "ruby/froyo/1.1.1/release/ruby-1.1.1-update.zip",
		screenshots:
		[
		"http://imgur.com/rnrHl.png",
		"http://imgur.com/R3n0O.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "ruby/froyo/1.1.1/release/ruby-1.1.1-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		},
		{
			name: "Theme",
			options:
			[
			{
				name: "Stock (Default)",
				urls: [""]
			},
			{
				name: "Black Bar",
				file: "ruby/froyo/1.1.1/themes/black_bar-1.1.1-update.zip"
			},
			{
				name: "Incognito",
				file: "ruby/froyo/1.1.1/themes/incognito-1.1.1-update.zip"
			},
			{
				name: "Incognito (Red)",
				file: "ruby/froyo/1.1.1/themes/incognito_red-1.1.1-update.zip"
			}
			]
		}
		]
	},
	{
		name: "Ruby 1.1.0 (Froyo)",
		summary: "Stable",
		device: "inc",
		product: "Ruby",
		incremental: 1100,
		modversion: "Ruby-1.1.0-ADR6300",
		file: "ruby/froyo/1.1.0/release/ruby-1.1.0-update.zip",
		screenshots:
		[
		"http://imgur.com/0gWnc.png"
		],
		addons:
		[
		{
			name: "Google Apps",
			file: "ruby/froyo/1.1.0/release/ruby-1.1.0-gapps-update.zip"
		}
		]
	},
	// ========================================================================================================= //
	//                                                                                                           //
	// SAPPHIRE BUILD                                                                                            //
	//                                                                                                           //
	// MOTOROLA DROID                                                                                            //
	//                                                                                                           //
	// ========================================================================================================= //
	{
		name: "Sapphire 2.0.2 (Froyo)",
		summary: "Stable",
		device: "sholes",
		product: "Sapphire",
		incremental: 2020,
		modversion: "Sapphire-2.0.2-Droid",
		file: "sapphire/froyo/2.0.2/release/sapphire-2.0.2-update.zip",
		screenshots:
		[
		"http://i.imgur.com/Mfjr8.png",
		"http://i.imgur.com/RqCTS.png",
		"http://i.imgur.com/9NLJL.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "sapphire/froyo/2.0.2/release/sapphire-2.0.2-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		},
		{
			name: "Kernel",
			options:
			[
			{
				name: "cvpcs 7-slot 125-800 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x125-1320IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz low voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz standard voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz increasing voltage",
				file: "sapphire/froyo/2.0.2/kernels/latest/sholes_sapphire_7x250-1320IV.zip"
			}
			]
		}
		]
	},
	{
		name: "Sapphire 2.0.0 (Froyo)",
		summary: "Stable",
		device: "sholes",
		product: "Sapphire",
		incremental: 2000,
		modversion: "Sapphire-2.0.0-Droid",
		file: "sapphire/froyo/2.0.0/release/sapphire-2.0.0-update.zip",
		screenshots:
		[
		"http://i.imgur.com/Mfjr8.png",
		"http://i.imgur.com/RqCTS.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "sapphire/froyo/2.0.0/release/sapphire-2.0.0-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		},
		{
			name: "Kernel",
			options:
			[
			{
				name: "cvpcs 7-slot 125-800 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x125-1320IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz low voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz standard voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz increasing voltage",
				file: "sapphire/froyo/2.0.0/kernels/latest/sholes_sapphire_7x250-1320IV.zip"
			}
			]
		}
		]
	},
	{
		name: "Sapphire 1.1.1 (Froyo)",
		summary: "Stable",
		device: "sholes",
		product: "Sapphire",
		incremental: 1110,
		modversion: "Sapphire-1.1.1-Droid",
		file: "sapphire/froyo/1.1.1/release/sapphire-1.1.1-update.zip",
		screenshots:
		[
		"http://imgur.com/rnrHl.png",
		"http://imgur.com/SaRQr.png"
		],
		choices:
		[
		{
			name: "Google Apps",
			options:
			[
			{
				name: "Install Google Apps",
				file: "sapphire/froyo/1.1.1/release/sapphire-1.1.1-gapps-update.zip"
			},
			{
				name: "Don't install Google Apps",
				urls: [""]
			}
			]
		},
		{
			name: "Kernel",
			options:
			[
			{
				name: "cvpcs 7-slot 125-800 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x125-1320IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz low voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz standard voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz increasing voltage",
				file: "sapphire/froyo/1.1.1/kernels/latest/sholes_sapphire_7x250-1320IV.zip"
			}
			]
		},
		{
			name: "Theme",
			options:
			[
			{
				name: "Stock (Default)",
				urls: [""]
			},
			{
				name: "Black Bar",
				file: "sapphire/froyo/1.1.1/themes/black_bar-1.1.1-update.zip"
			},
			{
				name: "Incognito",
				file: "sapphire/froyo/1.1.1/themes/incognito-1.1.1-update.zip"
			},
			{
				name: "Incognito (Red)",
				file: "sapphire/froyo/1.1.1/themes/incognito_red-1.1.1-update.zip"
			}
			]
		}
		]
	},
	{
		name: "Sapphire 1.1.0 (Froyo)",
		summary: "Stable",
		device: "sholes",
		product: "Sapphire",
		incremental: 1100,
		modversion: "Sapphire-1.1.0-Droid",
		file: "sapphire/froyo/1.1.0/release/sapphire-1.1.0-update.zip",
		screenshots:
		[
		"http://imgur.com/0gWnc.png"
		],
		addons:
		[
		{
			name: "Google Apps",
			file: "sapphire/froyo/1.1.0/release/sapphire-1.1.0-gapps-update.zip"
		}
		],
		choices:
		[
		{
			name: "Kernel",
			options:
			[
			{
				name: "cvpcs 7-slot 125-800 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x125-1320IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz low voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz standard voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz increasing voltage",
				file: "sapphire/froyo/1.1.0/kernels/latest/sholes_sapphire_7x250-1320IV.zip"
			}
			]
		}
		]
	},
	{
		name: "Sapphire 1.0.0 (Froyo)",
		summary: "Stable",
		device: "sholes",
		product: "Sapphire",
		incremental: 1000,
		modversion: "Sapphire-1.0.0-Droid",
		file: "sapphire/froyo/1.0.0/release/sapphire-1.0.0-update.zip",
		screenshots:
		[
		"http://imgur.com/0gWnc.png",
		"http://imgur.com/yvyuH.png",
		"http://imgur.com/QPiNR.png"
		],
		addons:
		[
		{
			name: "Google Apps",
			file: "sapphire/froyo/1.0.0/release/sapphire-1.0.0-gapps-update.zip"
		},
		{
			name: "Enable Stagefright",
			file: "sapphire/froyo/1.0.0/release/sapphire-1.0.0-stagefright-update.zip"
		}
		],
		choices:
		[
		{
			name: "Kernel",
			options:
			[
			{
				name: "cvpcs 7-slot 125-800 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-800 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-900 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1000 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1100 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1200 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1250 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 125-1320 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x125-1320IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-800LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-800SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-800 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-800IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-900LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-900SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-900 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-900IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1000LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1000SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1000 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1000IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1100LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1100SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1100 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1100IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1200LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1200SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1200 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1200IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1250LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1250SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1250 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1250IV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz low voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1320LV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz standard voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1320SV.zip"
			},
			{
				name: "cvpcs 7-slot 250-1320 mhz increasing voltage",
				file: "sapphire/froyo/1.0.0/kernels/latest/sholes_sapphire_7x250-1320IV.zip"
			}
			]
		},
		{
			name: "Theme",
			options:
			[
			{
				name: "Stock (Default)",
				urls: [""]
			},
			{
				name: "Black Bar",
				file: "sapphire/froyo/1.0.0/themes/spr/sapphire-1.0.0-black_bar-theme.zip"
			},
			{
				name: "Droid X",
				file: "sapphire/froyo/1.0.0/themes/cw/sapphire-1.0.0-droid_x-theme-update.zip"
			},
			{
				name: "Gala S",
				file: "sapphire/froyo/1.0.0/themes/cw/sapphire-1.0.0-gala_s-theme-update.zip"
			},
			{
				name: "Incognito",
				file: "sapphire/froyo/1.0.0/themes/cw/sapphire-1.0.0-incognito-theme-update.zip"
			},
			{
				name: "NexTang",
				file: "sapphire/froyo/1.0.0/themes/cw/sapphire-1.0.0-nextang-theme-update.zip"
			},
			{
				name: "NexTheme",
				file: "sapphire/froyo/1.0.0/themes/cw/sapphire-1.0.0-nextheme-theme-update.zip"
			}
			]
		}
		]
	},
	{
		name: "Sapphire 0.8.4 (Froyo)",
		summary: "Stable",
		device: "sholes",
		product: "Sapphire",
		incremental: 0840,
		modversion: "Sapphire-0.8.4-Droid",
		file: "sapphire/froyo/0.8.4/sapphire-0.8.4-update.zip",
		screenshots:
		[
		"http://i.imgur.com/2LpKS.png",
		"http://i.imgur.com/tjJGR.png"
		],
		addons:
		[
		{
			name: "Market Hack",
			file: "sapphire/froyo/0.8.4/sapphire-0.8.4-market_hack-update.zip"
		},
		{
			name: "Google Apps",
			file: "sapphire/froyo/0.8.4/sapphire-0.8.4-gapps-update.zip"
		}
		],
		choices:
		[
		{
			name: "Kernel",
			options:
			[
			{
				name: "P3Droid's 125-800mhz Low Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-LV-800.zip"]
			},
			{
				name: "P3Droid's 125-900mhz Low Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-LV-900.zip"]
			},
			{
				name: "P3Droid's 125-1000mhz Low Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-LV-1000.zip"]
			},
			{
				name: "P3Droid's 125-1100mhz Low Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-LV-1100.zip"]
			},
			{
				name: "P3Droid's 125-1200mhz Low Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-LV-1200.zip"]
			},
			{
				name: "P3Droid's 125-1250mhz Low Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-LV-1250.zip"]
			},
			{
				name: "P3Droid's 125-800mhz Standard Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-800.zip"]
			},
			{
				name: "P3Droid's 125-900mhz Standard Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-900.zip"]
			},
			{
				name: "P3Droid's 125-1000mhz Standard Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-1000.zip"]
			},
			{
				name: "P3Droid's 125-1100mhz Standard Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-1100.zip"]
			},
			{
				name: "P3Droid's 125-1200mhz Standard Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-1200.zip"]
			},
			{
				name: "P3Droid's 125-1250mhz Standard Voltage",
				urls: ["http://www.p3designs.info/sapphire/p3droid-0.32.9-6-1250.zip"]
			}
			]
		},
		{
			name: "Theme",
			options:
			[
			{
				name: "Stock (Default)",
				file: "sapphire/froyo/0.8.4/sapphire-0.8.4-stock-update.zip"
			},
			{
				name: "Black Bar",
				file: "sapphire/froyo/0.8.4/sapphire-0.8.4-black_bar-update.zip"
			},
			{
				name: "NexTANG",
				file: "sapphire/froyo/0.8.4/sapphire-0.8.4-nextang-update.zip"
			},
			{
				name: "Smoked Glass Blue",
				file: "sapphire/froyo/0.8.4/sapphire-0.8.4-smoked_glass_blue-update.zip"
			},
			{
				name: "Smoked Glass Blue [NO FONTS]",
				file: "sapphire/froyo/0.8.4/sapphire-0.8.4-smoked_glass_blue-nofonts-update.zip"
			}
			]
		}
		]
	}
	]
}
